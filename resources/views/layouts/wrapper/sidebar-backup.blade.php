<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
     <!--  <img src="dist/img/apotek.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" 
      style="opacity: .8;background-color: white;"> -->
      <span class="brand-text font-weight-light">Aspek & Sentimen</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{Auth::user()->name}}</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        
          <li class="nav-item">
            <a href="/dashboard" class="nav-link">
              <i class="fas fa-home"></i>
              <p> &nbsp;
                Dashboard
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="{{url('data')}}" class="nav-link">
              <i class="fas fa-file"></i>
              <p> &nbsp;
                Dataset
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>