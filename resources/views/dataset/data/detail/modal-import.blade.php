      <div class="modal fade" id="modal-import">
        <div class="modal-dialog modal-lg">
          <form action="{{url('/upload/detail/dataset')}}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Upload Data Komentar</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-md-12">
                    <label class="required form-label">Komentar</label>
                    <div class="input-group mb-3">
                      <input type="file" required name="file" class="form-control">
                      <input type="hidden" value="{{$dataSet->id}}" name="id">
                    </div>
                    <small style="color: red;">Note :</small> Download template yang dapat dibaca 
                    <a href="{{url('dist/template.xls')}}" target="_blank">disini</a>
                  </div>
                </div>
                <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
            </div>
          </form>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->