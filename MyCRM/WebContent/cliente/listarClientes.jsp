<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
       <meta charset="utf-8">
	   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	   <title>My CRM</title>
	   <meta name="description" content="">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
	
	   <link rel="stylesheet" href="css/bootstrap.min.css">
	   <style>
	        body {
	            padding-top: 50px;
	            padding-bottom: 20px;
	        }
	   </style>
	   <link rel="stylesheet" href="../css/style.css">
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">     
    </head>
	<body>
		<c:import url="../inc/header.jsp"/>
	
		<!-- Conteúdo principal da página -->
		<main class="container">
		<h1>Cadastro de Clientes</h1>
			<a class="btn btn-primary" href="cliente/inserirCliente.jsp"><i class="fa fa-plus"></i> Novo Cliente</a>
		<hr/>
			 <form action="/MyCRM/ListarClientesServlet" method="post">              
                <c:choose>
                    <c:when test="${not empty listaClientes}">
                        <table  class="table table-striped">
                            <thead>
                                <tr>
                                    <td>#</td>
                                    <td>Nome Completo</td>
                                    <td>CPF</td>
                                    <td>Email</td>
                                    <td>Limite Crédito</td>
                                </tr>
                            </thead>
                            <c:forEach var="cliente" items="${listaClientes}">
                                <tr>
                                    <td>${cliente.id}</td>
                                    <td>${cliente.nomeCompleto}</td>
                                    <td>${cliente.cpf}</td>
                                    <td>${cliente.email}</td>
                                    <td>${cliente.limiteCredito}</td>
                                </tr>
                            </c:forEach>               
                        </table>  
                    </c:when>                    
                    <c:otherwise>
                        <br>           
                        <div class="alert alert-info">
                            No people found matching your search criteria
                        </div>
                    </c:otherwise>
                </c:choose>                        
            </form>
		</main>
		<c:import url="../inc/footer.jsp"/>
	</body>
</html>

