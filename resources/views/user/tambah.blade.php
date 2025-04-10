@extends('user.usermaster')
@section('menu')
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Pengajuan Reservasi/Kunjungan</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ route('user.dashboard') }}">Kembali ke Dashboard</a></li>
              <li class="breadcrumb-item active">Pengajuan Reservasi/Kunjungan</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
@endsection
@section('content')
<section class="content">
      <div class="container-fluid">
      <div class="row">
          <div class="col-md-12">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">List Jadwal</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                  </button>
                </div>
                <!-- /.card-tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                The body of the card
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Silahkan isi datanya</h3>
              </div>

      <!-- <form action="{{ route('user.store') }}" method="POST"> -->
      <form action="" method="POST">
          @csrf
          <div class="card-body">
          <div class="form-group">
              <label>Nama</label>
              <input type="text" name="nama" class="form-control" required placeholder="Masukkan nama anda">
          </div>
          <!-- 
          <div class="form-group">
              <label>Asal</label>
              <input type="text" name="asal" class="form-control" required placeholder="Misal, dari TK... dari Universitas... dsb...">
          </div>
          <div class="form-group">
              <label>Nomor Whatsapp</label>
              <input type="tel" name="nomor_wa" class="form-control" required placeholder="Masukkan nomor yang bisa dihubungi">
          </div> -->
          <div class="form-group">
              <label>Jumlah Orang</label>
              <input type="number" name="jumlah_orang" class="form-control" required placeholder="Masukkan angka saja, misal 50, bukan 50 orang..">
          </div>
          <!-- <div class="form-group">
              <label>Jenis Ajuan</label>
              <select name="jenis" class="form-control" required>
                  <option value="" disabled selected>Pilih Jenis</option>
                  <option value="1">Kunjungan Perpustakaan</option>
                  <option value="2">Reservasi Aula</option>
              </select>
          </div> -->
          <div class="form-group">
              <label>Tanggal</label>
              <input type="date" name="tanggal" class="form-control" required>
          </div>
          <div class="form-group">
              <label>Jam</label>
              <input type="time" name="jam" class="form-control" required>
          </div>
          <a class="btn btn-danger" href="{{ route('user.dashboard') }}" role="button">Kembali</a>
          <button type="submit" class="btn btn-primary">Kirim</button>
        </div>
      </form>
        <br><br>
    </div>
</div>
@endsection