      <div class="modal fade" id="modal-edit-{{$item->id}}">
        <div class="modal-dialog modal-lg">
          <form action="{{url('/update/dataset/'.$item->id)}}" method="post">
            @csrf
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Edit Data Aspek</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button> 
              </div>
              <div class="modal-body">
                 <small style="color: red;">Catatan :</small><small>Ketika Tipe Yang Dpilih Aspek Maka Akan Membutuhkan ID Video Youtube</small>
                <div class="row">
                  <div class="col-md-12">
                    <label class="required form-label">Type</label>
                    <div class="input-group mb-3">
                      <select class="form-control" name="type" required>
                        <option value="" selected disabled>Pilih Tipe</option>
                        <option value="aspek" {{$item->type == 'aspek' ? 'selected':''}}>Aspek</option>
                        <option value="sentimen" {{$item->type == 'sentimen' ? 'selected':''}}>Sentimen</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <label class="required form-label">ID</label>
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="Masukkan ID Video Youtube Jika Data Aspek" required name="keyunique" value="{{$item->keyunique}}">                      
                    </div>
                  </div>
                  <div class="col-md-12">
                    <label class="required form-label">Source</label>
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="Masukkan Source" required name="source" value="{{$item->source}}">
                    </div>
                  </div>
                  <div class="col-md-12">
                    <label class="required form-label">Title</label>
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="Masukkan Title" required name="title" value="{{$item->title}}">
                    </div>
                  </div>
                  <div class="col-md-12">
                    <label class="required form-label">URL</label>
                    <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder="Masukkan URL" required name="url" value="{{$item->url}}">
                    </div>
                  </div>
                </div>
                <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Update</button>
              </div>
            </div>
          </form>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->