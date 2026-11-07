<%@ page language="java"
         contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
           uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Movie Collection</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<!-- Custom CSS -->
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<!-- Navigation -->

<nav class="navbar navbar-dark bg-dark shadow">

    <div class="container">

        <a class="navbar-brand fw-bold" href="#">
            🎬 Movie Collection
        </a>

        <a href="${pageContext.request.contextPath}/api/show-time/movies-home"
           class="btn btn-warning">
            <i class="fa-solid fa-house"></i>
            Home
        </a>

    </div>

</nav>

<div class="container py-5">

    <div class="row">

        <c:forEach var="movie" items="${movies}">

            <div class="col-lg-4 col-md-6 mb-4">

                <div class="card movie-card h-100 shadow">

                    <!-- Dummy Movie Poster -->

                              <!-- Movie Poster -->

                              <c:choose>

                                  <c:when test="${movie.movieName == 'Spirit'}">
                                     <img src="${pageContext.request.contextPath}/images/movie1.jpg"
                                          class="card-img-top movie-poster"
                                          alt="Spirit">

                                  </c:when>

                                  <c:when test="${movie.movieName == 'Varanasi'}">
                                      <img src="${pageContext.request.contextPath}/images/movie2.jpg"
                                           class="card-img-top movie-poster"
                                           alt="Varanasi">
                                  </c:when>

                                  <c:when test="${movie.movieName == 'Dragon'}">
                                      <img src="${pageContext.request.contextPath}/images/movie3.jpg"
                                           class="card-img-top movie-poster"
                                           alt="Dragon">
                                  </c:when>

                                  <c:when test="${movie.movieName == 'Raaka'}">
                                      <img src="${pageContext.request.contextPath}/images/movie4.jpg"
                                           class="card-img-top movie-poster"
                                           alt="Raaka">
                                  </c:when>

                                  <c:when test="${movie.movieName == 'Kalki 2898 AD: Part 2'}">
                                      <img src="${pageContext.request.contextPath}/images/movie5.jpg"
                                           class="card-img-top movie-poster"
                                           alt="Kalki 2898 AD: Part 2">
                                  </c:when>

                                  <c:when test="${movie.movieName == 'Salaar: Part 2 – Shouryanga Parvam'}">
                                      <img src="${pageContext.request.contextPath}/images/movie6.jpg"
                                           class="card-img-top movie-poster"
                                           alt="Salaar: Part 2 – Shouryanga Parvam">
                                  </c:when>

                                   <c:when test="${movie.movieName == 'Fauzi'}">
                                                                        <img src="${pageContext.request.contextPath}/images/movie7.jpg"
                                                                             class="card-img-top movie-poster"
                                                                             alt="Fauzi">
                                                                    </c:when>

                                  <c:otherwise>
                                      <img src="${pageContext.request.contextPath}/images/default.jpg"
                                           class="card-img-top movie-poster"
                                           alt="Movie Poster">
                                  </c:otherwise>

                              </c:choose>

                    <div class="card-body">

                        <h4 class="card-title text-primary fw-bold">
                            ${movie.movieName}
                        </h4>

                        <span class="badge bg-danger mb-3">
                            ${movie.genre}
                        </span>

                        <p>
                            <strong>
                                <i class="fa-solid fa-user"></i>
                                Director :
                            </strong>
                            ${movie.director}
                        </p>

                        <p>
                            <strong>
                                <i class="fa-solid fa-calendar"></i>
                                Release Year :
                            </strong>
                            ${movie.releaseYear}
                        </p>

                        <p>

                            <strong>
                                <i class="fa-solid fa-star text-warning"></i>
                                Rating :
                            </strong>

                            ${movie.rating}/10

                        </p>

                        <p class="description">

                            ${movie.description}

                        </p>

                    </div>

                    <div class="card-footer bg-white border-0">

                        <button class="btn btn-primary w-100">

                            <i class="fa-solid fa-circle-info"></i>

                            View Details

                        </button>

                    </div>

                </div>

            </div>

        </c:forEach>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>