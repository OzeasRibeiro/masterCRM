<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="index.jsp" class="navbar-brand">Master ERP</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">        
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    Cadastro <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/MasterCRM/ListarClientesServlet">Clientes</a></li>
                    <li><a href="#">Fornecedores</a></li>
					<li><a href="#">Produtos</a></li>
					<li><a href="#">Serviços</a></li>
					<li><a href="#">Marcas</a></li>
					<li><a href="#">Transportadoras</a></li>
                </ul>
            </li>
			<li><a href="#">Vendas</a></li>
			<li><a href="#">Compras</a></li>
			<li><a href="#">Despesas</a></li>
			<li><a href="#">Pagamentos</a></li>
			<li><a href="#">Receitas</a></li>
			<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    Minha Conta <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">Entrar</a></li>
					<li><a href="#">Mudar Senha</a></li>
					<li><a href="#">Sair</a></li>
                </ul>
            </li>
          </ul>
        </div>
		<!--/.navbar-collapse -->
      </div>
    </nav>