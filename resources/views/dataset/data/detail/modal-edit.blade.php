      <div class="modal fade" id="modal-edit-{{$item->id}}">
        <div class="modal-dialog modal-lg">
          <form action="{{url('/update/detail/dataset/'.$item->id)}}" method="post">
            @csrf
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Edit Data Komentar</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-md-12">
                    <label class="required form-label">Komentar</label>
                    <div class="input-group mb-3">
                      <textarea class="form-control" rows="10" required placeholder="Tambahkan Komentar" name="comment">{{$item->content}}</textarea>
                      <input type="hidden" value="{{$dataSet->id}}" name="id">
                    </div>
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