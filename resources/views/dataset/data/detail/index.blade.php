@extends('layouts.app')

@section('custom-css')
<link rel="stylesheet" href="{{url('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{url('plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{url('plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
<!-- Select2 -->
<link rel="stylesheet" href="{{url('plugins/select2/css/select2.min.css')}}">
<link rel="stylesheet" href="{{url('plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
@endsection

@section('custom-js')
<script src="{{url('plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{url('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{url('plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{url('plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<!-- Select2 -->
<script src="{{url('plugins/select2/js/select2.full.min.js')}}"></script>
<script type="text/javascript">
  $(function () {
    $('.select2').select2({
      theme: 'bootstrap4'
    })
  });
</script>
<script type="text/javascript">
  $(function () {
    $('#example2').DataTable({
      "paging": false,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
  function optionForm(id) {
    document.getElementById(id).submit();
    return false;
  }
</script>
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Komentar Data Data</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Komentar Data Dataset Data</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row mb-2 d-flex justify-content-end mr-auto">
        <div class="ml-auto">
          <a style="cursor: pointer;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-create">
            <i class="fas fa-plus"></i>
            Tambah Komentar
          </a>
           <a style="cursor: pointer;" type="button"  data-toggle="modal" data-target="#modal-import" class="btn btn-warning">
            <i class="fas fa-upload"></i>
            Upload Komentar
          </a>
          <a style="cursor: pointer;" href="" class="btn btn-info">
            <i class="fas fa-download"></i>
            Download Semua Komentar
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Dataset Data</h3>
              <br>
              <div class="row">
                <div class="col-sm-6">
                  <b>Source</b> : {{$dataSet->source}}
                </div>
                <div class="col-sm-6">
                  <b>Title</b> : {{$dataSet->title}}
                </div>
                <div class="col-sm-6">
                  <b>Url</b> : <a href="{{$dataSet->url}}" target="_blank">{{$dataSet->url}}</a>
                </div>
                <div class="col-sm-6">
                  <b>ID</b> : {{$dataSet->keyunique}}
                </div>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Komentar</th>
                  </tr>
                </thead>
                <tbody>
                   
                  @foreach($data as $key => $item)
                  @include('dataset.data.detail.modal-edit')
                    <tr>
                      <td>{{ $key+1 }}</td>
                      <td>
                        <b>Created At : </b>
                        <br>
                        {{$item->created_at}}<br>
                        <b>Updated At : </b>
                        <br>
                        {{$item->created_at}}<br>
                        <b>Komentar : </b>
                        <br>
                        <?php echo $item->content?> &nbsp; <a style="cursor: pointer;color: black;" class="btn btn-info btn-sm" 
                            data-toggle="modal" data-target="#modal-edit-{{$item->id}}" title="Edit Data">
                          <i class="fas fa-edit"></i>
                        </a>
                        &nbsp; Atau &nbsp;
                        <a style="color: black;" class="btn btn-danger btn-sm"
                            href="{{url('delete/detail/dataset/'.$item->id)}}" title="Hapus komentar" 
                            onclick="return confirm('Yakin untuk menghapus data?')">
                          <i class="fas fa-trash"></i>
                        </a>  
                      </td> 
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
       @include('dataset.data.detail.modal-import')
    </div>
    <!-- /.container-fluid -->
    @include('dataset.data.detail.modal-create')
   
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection