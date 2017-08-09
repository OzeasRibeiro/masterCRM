<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
       <meta charset="utf-8">
	   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	   <title>Master CRM</title>
	   <meta name="description" content="">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
	
	   <link rel="stylesheet" href="css/bootstrap.min.css">
	   <style>
	        body {
	            padding-top: 50px;
	            padding-bottom: 20px;
	        }
	   </style>
	   <link rel="stylesheet" href="css/style.css">
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">     
    </head>
	<body>
		<c:import url="/inc/header.jsp"/>
	
		<!-- Conteúdo principal da página -->
		<main class="container">
		<h1>Dashboard</h1>
		<hr/>
		<div class="row">
			<div class="col-xs-6 col-sm-3 col-md-2">
				<a href="cliente/inserirCliente.jsp" class="btn btn-primary">
					<div class="row">
						<div class="col-xs-12 text-center">
							<i class="fa fa-plus fa-5x"></i>
						</div>
						<div class="col-xs-12 text-center">
							<p>Novo Cliente</p>
						</div>
					</div>
				</a>
			</div>
		
			<div class="col-xs-6 col-sm-3 col-md-2">
				<a href="/MasterCRM/ListarClientesServlet" class="btn btn-default">
					<div class="row">
						<div class="col-xs-12 text-center">
							<i class="fa fa-user fa-5x"></i>
						</div>
						<div class="col-xs-12 text-center">
							<p>Clientes</p>
						</div>
					</div>
				</a>
			</div>
		</main>
		
		<c:import url="/inc/footer.jsp"/>
	</body>
</html>