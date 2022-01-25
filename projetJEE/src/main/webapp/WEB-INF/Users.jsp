<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="beans.Users"%>
<%@page import="beans.Albums"%>
<%@page import="java.util.ArrayList"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Projet JEE · Album</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      #files{
    color:transparent;}
    </style>

    
    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
  </head>
  <body>
    
    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="<c:url value="/"/>">PhotoESP</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <c:if  test="${!empty sessionScope.user}">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="UserAlbums">Mes albums</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="PrivateAlbums">Albums privés</a>
                </li>
                <c:if test="${ sessionScope.user.role == 'admin'}">
                  <li class="nav-item">
                    <a class="nav-link" href="#">Utilisateurs</a>
                  </li>  
                </c:if>
                       
              </c:if>
            </ul>
            
            <div class="d-flex">
              <c:choose>
                <c:when test="${empty sessionScope.user }"> 
                  <a 
                    href='<c:url value="/login"/>'
                    class="btn btn-primary" 
                  >
                    Connexion
                  </a>
                </c:when>
                
                <c:otherwise>
                  <a href='<c:url value="/logout"/>' class="btn btn-primary">Déconnexion</a>
                </c:otherwise>
              </c:choose> 

             
              
            </div>
          </div>
        </div>
      </nav>
    </header>

    <main>

    	<div class="container">
			<div class="row">
					<h2>Liste des utilisateurs</h2>
			</div>
			<div class="rowa">    
                <a href="/PhotoESP/Ajout" class="btn btn-success">Ajouter un user</a>
			</div>
					<div class="table-responsive">		
						<table class="table table-hover table-bordered">
							<tr>
								<th>Prenom(s)</th>
								<th>Nom</th>
								<th>Login</th>
								<th>Password</th>
								<th>Statut</th>
								<th colspan="2">Edition</th>
							</tr>
							<tbody>
								<tr>
									<td>Abdou Karim</td>
									<td>Sarr</td>
									<td>karim</td>
									<td>passer123</td>
									<td>Admin</td>
									<td><a class="btn btn-success" href="">Update</a></td>
									<td><a class="btn btn-danger" href="">Delete</a></td>
								</tr>  
								<tr>
									<td>test</td>
									<td>test</td>
									<td>test</td>
									<td>test</td>
									<td>Simple</td>
									<td><a class="btn btn-success" href="">Update</a></td>
									<td><a class="btn btn-danger" href="">Delete</a></td>
								</tr>  
								<tr>
									<td>Raymonde Suzanne</td>
									<td>Mbengue</td>
									<td>Suzanne</td>
									<td>rsm</td>
									<td>Simple</td>		
									<td><a class="btn btn-success" href="">Update</a></td>
									<td><a class="btn btn-danger" href="">Delete</a></td>
								</tr>  
								<tr>
									<td>elou</td>
									<td>elou</td>
									<td>eloudouni</td>
									<td>Admin</td>									<td>eloudouni</td>
									<td><a class="btn btn-success" href="">Update</a></td>
									<td><a class="btn btn-danger" href="">Delete</a></td>
								</tr>    
							</tbody>
						</table>
					</div>
			</div>

        <hr class="featurette-divider">

      <!-- FOOTER -->
      <footer class="container" style=" position: relative; top: 8Opx;">
        <p class="float-end"><a href="#">Back to top</a></p>
        <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </main>


    <!-- <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
      
  </body>
</html>
