<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Dispursip Samarinda</title>
    <link rel="icon" href="{{ asset('dist/img/logorbg.png') }}" type="image/png">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap');
        
        body {
            font-family: 'Poppins', sans-serif;
            background: #ececec;
        }
        .box-area {
            width: 930px;
        }
        .right-box {
            padding: 40px 30px 40px 40px;
        }
        ::placeholder {
            font-size: 16px;
        }
        .rounded-4 {
            border-radius: 20px;
        }
        .rounded-5 {
            border-radius: 30px;
        }
        @media only screen and (max-width: 768px) {
            .box-area {
                margin: 0 10px;
            }
            .left-box {
                height: 100px;
                overflow: hidden;
            }
            .right-box {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="row border rounded-5 p-3 bg-white shadow box-area">
        <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background: linear-gradient(135deg,rgb(26, 89, 161),rgb(128, 63, 111));">
                <div class="featured-image mb-3">
                    <img src="{{ asset('dist/img/1.png') }}" class="img-fluid" style="width: 250px;">
                </div>
                <p class="text-white fs-2" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;">Login</p>
                <small class="text-white text-wrap text-center" style="width: 17rem; font-family: 'Courier New', Courier, monospace;">Layanan Reservasi Aula dan Kunjungan Perpustakaan</small>
            </div>
            <div class="col-md-6 right-box">
                <div class="row align-items-center">
                    <div class="header-text mb-4">
                        <h2>Selamat datang</h2>
                        <p>Silahkan login untuk masuk ke website</p>
                    </div>
                    <form action="{{ route('login.post') }}" method="POST">
                        @csrf
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                            <input type="email" id="email" name="email" class="form-control form-control-lg bg-light fs-6" placeholder="Masukkan Email" required autofocus>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                            <input type="password" id="password" name="password" class="form-control form-control-lg bg-light fs-6" placeholder="Masukkan Password" required>
                        </div>
                        <!-- <div class="input-group mb-5 d-flex justify-content-between">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="formCheck">
                                <label for="formCheck" class="form-check-label text-secondary"><small>Remember Me</small></label>
                            </div>
                            <div class="forgot">
                                <small><a href="#">Forgot Password?</a></small>
                            </div>
                        </div> -->
                        <div class="input-group mb-3">
                            <button type="submit" class="btn btn-lg btn-primary w-100 fs-6">Login</button>
                        </div>
                    </form>
                    <!-- <div class="input-group mb-3">
                        <button class="btn btn-lg btn-light w-100 fs-6"><img src="{{ asset('dist/img/google.png') }}" style="width:20px" class="me-2"><small>Sign In with Google</small></button>
                    </div> -->
                    <div class="row">
                        <small>Belum punya akun? <a href="{{ route('register') }}">Daftar di sini</a></small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
