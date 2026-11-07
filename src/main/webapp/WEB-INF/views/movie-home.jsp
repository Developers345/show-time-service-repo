<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Movie Collection</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    min-height:100vh;
    background:linear-gradient(135deg,#141E30,#243B55);
    font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;
    display:flex;
    justify-content:center;
    align-items:center;
}

.hero-card{

    width:100%;
    max-width:700px;
    background:rgba(255,255,255,0.12);
    backdrop-filter:blur(12px);
    border-radius:20px;
    padding:60px 40px;
    text-align:center;
    color:#fff;
    box-shadow:0 15px 40px rgba(0,0,0,.35);
}

.movie-icon{

    width:120px;
    height:120px;
    background:#ffc107;
    color:#222;
    font-size:55px;
    display:flex;
    align-items:center;
    justify-content:center;
    border-radius:50%;
    margin:auto;
    margin-bottom:25px;
}

.hero-card h1{

    font-size:42px;
    font-weight:700;
}

.hero-card p{

    font-size:18px;
    color:#e8e8e8;
    margin:20px 0 35px;
}

.btn-movie{

    background:#ffc107;
    color:#212529;
    padding:14px 35px;
    font-size:18px;
    font-weight:600;
    border-radius:50px;
    text-decoration:none;
    transition:.4s;
    display:inline-block;
}

.btn-movie:hover{

    background:#ffca2c;
    color:#000;
    transform:translateY(-4px);
    box-shadow:0 10px 25px rgba(255,193,7,.5);
}

.features{

    margin-top:45px;
}

.feature{

    padding:20px;
}

.feature i{

    font-size:35px;
    color:#ffc107;
    margin-bottom:15px;
}

.feature h5{

    font-weight:600;
}

.feature p{

    font-size:15px;
    color:#d8d8d8;
    margin-top:10px;
}

.footer{

    margin-top:35px;
    color:#dcdcdc;
    font-size:14px;
}

</style>

</head>

<body>

<div class="container">

    <div class="hero-card">

        <div class="movie-icon">
            <i class="fa-solid fa-film"></i>
        </div>

        <h1>Movie Collection</h1>

        <p>
            Browse your favorite movies, explore show timings,
            and manage your movie collection with an elegant interface.
        </p>

        <a href="${pageContext.request.contextPath}/api/show-time/show-movies"
           class="btn-movie">
            <i class="fa-solid fa-video"></i>
            View Movies
        </a>

        <div class="row features">

            <div class="col-md-4 feature">

                <i class="fa-solid fa-clapperboard"></i>

                <h5>Movies</h5>

                <p>
                    Browse the latest and classic movie collection.
                </p>

            </div>

            <div class="col-md-4 feature">

                <i class="fa-solid fa-clock"></i>

                <h5>Show Timings</h5>

                <p>
                    Check available show timings with ease.
                </p>

            </div>

            <div class="col-md-4 feature">

                <i class="fa-solid fa-star"></i>

                <h5>Favorites</h5>

                <p>
                    Keep track of your most loved movies.
                </p>

            </div>

        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>