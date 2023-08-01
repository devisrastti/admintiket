<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="{{ url('style/apple-icon.png')}}">
    <link rel="shortcut icon" href="{{ url('style/favicon.ico')}}">

    <link rel="stylesheet" href="{{ url('style/assets/css/normalize.css')}}">
    <link rel="stylesheet" href="{{ url('style/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ url('style/assets/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{ url('style/assets/css/themify-icons.css')}}">
    <link rel="stylesheet" href="{{ url('style/assets/css/flag-icon.min.css')}}">
    <link rel="stylesheet" href="{{ url('style/assets/css/cs-skin-elastic.css')}}">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="{{ url('style/assets/scss/style.css')}}">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="{{ url('style/index.html')}}">
                        <a class="navbar-brand" href="" style="color: white">Admin Tiket</a>
                    </a>
                </div>
                <div class="login-form">
                    <form>
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember Me
                            </label>
                        </div>

                        <button type="submit" formaction="home" class="btn btn-success btn-flat m-b-30 m-t-30">Login</button>
                        <div class="register-link m-t-15 text-center">

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="{{ url('style/assets/js/vendor/jquery-2.1.4.min.js')}}"></script>
    <script src="{{ url('style/assets/js/popper.min.js')}}"></script>
    <script src="{{ url('style/assets/js/plugins.js')}}"></script>
    <script src="{{ url('style/assets/js/main.js')}}"></script>


</body>
</html>
