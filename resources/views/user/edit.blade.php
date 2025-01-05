@extends('user.usermaster')
@section('content')
<div class="container">
    <div class="mx-1">
        <form action="{{ route('user.update', $ajuan->id) }}" method="POST">
            @csrf
            <div class="form-group">
                <label>Nama</label>
                <input type="text" name="nama" class="form-control" required value="{{ $ajuan->nama }}" placeholder="Masukkan nama anda">
            </div>
            <div class="form-group">
                <label>Asal</label>
                <input type="text" name="asal" class="form-control" required value="{{ $ajuan->asal }}" placeholder="Misal, dari TK... dari Universitas... dsb...">
            </div>
            <div class="form-group">
                <label>Nomor Whatsapp</label>
                <input type="tel" name="nomor_wa" class="form-control" required value="{{ $ajuan->whatsapp }}" placeholder="Masukkan nomor yang bisa dihubungi">
            </div>
            <div class="form-group">
                <label>Jenis Ajuan</label>
                <select name="jenis" class="form-control" required>
                    <option value="" disabled>Pilih Jenis</option>
                    <option value="Kunjungan" {{ $ajuan->jenis == 1 ? 'selected' : '' }}>Kunjungan Perpustakaan</option>
                    <option value="Reservasi" {{ $ajuan->jenis == 2 ? 'selected' : '' }}>Reservasi Aula</option>
                </select>
            </div>
            <div class="form-group">
                <label>Tanggal</label>
                <input type="date" name="tanggal" class="form-control" required value="{{ $ajuan->tanggal }}" autofocus>
            </div>
            <div class="form-group">
                <label>Jam</label>
                <input type="time" name="jam" class="form-control" required value="{{ \Carbon\Carbon::parse($ajuan->jam)->format('H:i') }}">
            </div>
            <a class="btn btn-danger" href="{{ route('user.dashboard') }}" role="button">Kembali</a>
            <button type="submit" class="btn btn-primary">Kirim</button>
        </form>
        <br><br>
    </div>
</div>
@endsection
