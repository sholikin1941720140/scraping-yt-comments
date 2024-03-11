<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Google_Client;
use Google_Service_YouTube;
use GuzzleHttp\Client;
use App\Models\Videos;
use App\Models\Comments;
use Carbon\Carbon;
use DB;
//require base_path("vendor\shuchkin\simplexls\src\SimpleXLS.php");
//require_once __DIR__ . '/vendor/src/SimpleXLS.php';
use Shuchkin\SimpleXLS;
class ScrapperController extends Controller
{
    public function getVideoComments($request,$id)
    {
        try {
            $api_key = 'AIzaSyCGRlfPo2EE3J9F8Kgmn5ey_lNFPOXscr0';
            $video_id = $request->keyunique;
            $client = new Google_Client();
            $client->setDeveloperKey($api_key);
            $youtube = new Google_Service_YouTube($client);

            $video_comments_response = $youtube->commentThreads->listCommentThreads('snippet,replies', ['videoId' => $video_id]);

            while ($video_comments_response) {
                foreach ($video_comments_response['items'] as $item) {
                    $published = $item['snippet']['topLevelComment']['snippet']['publishedAt'];
                    $published_at = Carbon::parse($published)->toDateTimeString();
                    $user = $item['snippet']['topLevelComment']['snippet']['authorDisplayName'];
                    $comment = $item['snippet']['topLevelComment']['snippet']['textDisplay'];
                    $likeCount = $item['snippet']['topLevelComment']['snippet']['likeCount'];

                    $commentData = DB::table('dataset_details')->insert([
                        'dataset_id' => $id,
                        'content' => $comment,
                        'created_at'=>Carbon::now('Asia/Jakarta')->format('Y-m-d H:i:s')
                    ]);

                    $replycount = $item['snippet']['totalReplyCount'];

                    if ($replycount > 0) {
                        foreach ($item['replies']['comments'] as $reply) {
                            $published = $reply['snippet']['publishedAt'];
                            $published_at = Carbon::parse($published)->toDateTimeString();
                            $user = $reply['snippet']['authorDisplayName'];
                            $repl = $reply['snippet']['textDisplay'];
                            $likeCount = $reply['snippet']['likeCount'];

                            $replyData =DB::table('dataset_details')->insert([
                                'dataset_id' => $id,
                                'content' => $repl,
                                'created_at'=>Carbon::now('Asia/Jakarta')->format('Y-m-d H:i:s')
                            ]);
                        }
                    }
                }

                if (isset($video_comments_response['nextPageToken'])) {
                    $video_comments_response = $youtube->commentThreads->listCommentThreads('snippet,replies', ['videoId' => $video_id, 'pageToken' => $video_comments_response['nextPageToken']]);
                } else {
                    break;
                }
            }
        } catch (\Exception $e) {
            return redirect()->back()->with('error',$e->getMessage);
        }
        
    }

    public function index(Request $request)
    {
        $data = DB::table('datasets')->get();
        if($request->id != null)
        {
            $dataSet = DB::table('datasets')->where('id',$request->id)->first();
            $data = DB::table('dataset_details')->where('dataset_id',$dataSet->id)->get();
            return view('dataset.data.detail.index',compact('dataSet','data'));
        }
        return view('dataset.data.index', compact('data'));
    }

    public function addDataSet(Request $request)
    {
        $dataSetId = DB::table('datasets')->insertGetId([
            'keyunique'=>$request->keyunique,
            'type'=>$request->type,
            'source'=>$request->source,
            'title'=>$request->title,
            'url'=>$request->url,
            'created_at'=>Carbon::now('Asia/Jakarta')->format('Y-m-d H:i:s')
        ]);

        if($request->type == 'aspek')
        {
            $this->getVideoComments($request,$dataSetId);
        }
        return redirect()->back()->with('success','Data Berhasil Ditambah');
    }

    public function updateDataSet(Request $request,$id)
    {
        $dataSet = DB::table('datasets')->where('id',$id)->first();

        DB::table('datasets')->where('id',$id)->update([
            'keyunique'=>$request->keyunique,
            'type'=>$request->type,
            'source'=>$request->source,
            'title'=>$request->title,
            'url'=>$request->url,
            'updated_at'=>Carbon::now('Asia/Jakarta')->format('Y-m-d H:i:s')
        ]);
        if($request->type == 'aspek')
        {
            if($dataSet->keyunique != $request->keyunique)
            {
                DB::table('dataset_details')->where('dataset_id',$id)->delete();
                $this->getVideoComments($request,$id);
            }
        }
        return redirect()->back()->with('success','Data Berhasil Diubah');
    }

    public function deleteDataSet($id)
    {
        DB::table('datasets')->where('id',$id)->delete();
        DB::table('dataset_details')->where('dataset_id',$id)->delete();
        return redirect()->back()->with('success','Data Berhasil Dihapus');
    }


    public function adddetailDataSet(Request $request)
    {
         DB::table('dataset_details')->insert([
            'dataset_id' => $request->id,
            'content' => $request->comment,
            'created_at'=>Carbon::now('Asia/Jakarta')->format('Y-m-d H:i:s')
        ]);
        return redirect()->back()->with('success','Data Berhasil Ditambah');
    }

    public function updatedetail(Request $request,$id)
    {
         DB::table('dataset_details')->where('id',$id)->update([
            'content' => $request->comment,
            'updated_at'=>Carbon::now('Asia/Jakarta')->format('Y-m-d H:i:s')
        ]);
        return redirect()->back()->with('success','Data Berhasil Diubah');
    }

    public function deletedetail($id)
    {
        DB::table('dataset_details')->where('id',$id)->delete();
        return redirect()->back()->with('success','Data Berhasil Dihapus');
    }

    public function importKomentar(Request $request)
    {
        //dd($request->all());
         $file = $this->uploadFile($request,'file');
         $xlsx = SimpleXLS::parse(public_path($file));
         $ff = $xlsx->rows();
         $arrResult = [];
         foreach ( $ff as $k => $r ) 
         {
            if ( $k === 0 ) {
                    $header_values = $r;
                    continue;
                }
                $rows[] = array_combine( $header_values, $r );
            }
            $mentah = $rows;
        foreach ($mentah as $key => $value) 
        {
                DB::table('dataset_details')->insert([
                    'dataset_id' => $request->id,
                    'content' => $value['komentar'],
                    'created_at'=>Carbon::now('Asia/Jakarta')->format('Y-m-d H:i:s')
                ]);
        }
        return redirect()->back()->with('success','Data Berhasil Ditambah');
    }


    public function uploadFile(Request $request,$oke)
    {
            $result ='';
            $file = $request->file($oke);
            $name = $file->getClientOriginalName();
            // $tmp_name = $file['tmp_name'];

            $extension = explode('.',$name);
            $extension = strtolower(end($extension));

            $key = rand();
            $tmp_file_name = "{$key}.{$extension}";
            $tmp_file_path = "upload/komentar/";
            $file->move($tmp_file_path,$tmp_file_name);
            // if(move_uploaded_file($tmp_name, $tmp_file_path)){
            $result = $tmp_file_name;
            // }
            $data = 'upload/komentar'.'/'.$result;
        return $data;
    }
}
