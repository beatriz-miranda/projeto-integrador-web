
<html>
<head>
  <link rel="stylesheet" href="../css/style.css"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
    <nav class="navbar navbar-default" style="background-color:#DFDDC7;">
        <div class="container-fluid" style="font-display:#211717 ;">
          <div class="navbar-header">
            <a class="navbar-brand" href="#"><img src="../img/logo-escuro-1.png"></a>
          </div>
          <ul class="nav navbar-nav">
            <li><a href="#">Quem somos</a></li>
            <li><a href="#">Obras de arte</a></li>
            <li><a href="#">Contato</a></li>
            <li><a href="#">Artistas</a></li>
          </ul>
        </div>
      </nav>
</body>

<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Senha</label>
      <input type="password" class="form-control" id="inputPassword4" placeholder="Senha">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Endereço</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Rua dos Bobos, nº 0">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Endereço 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartamento, hotel, casa, etc.">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Cidade</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputEstado">Estado</label>
      <select id="inputEstado" class="form-control">
        <option selected>Escolher...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputCEP">CEP</label>
      <input type="text" class="form-control" id="inputCEP">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Clique em mim
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Entrar</button>
</form>

<footer class="container-fluid">
			<div class="row p-5 mx-2">

				<div class="col-9 p-0">

					<!-- ICONES SOCIAL MEDIA -->

					<div id="icones-footer">
						<i class="fa fa-instagram"></i>
						<i class="mx-3 fa fa-facebook-square"></i>
						<i class="fa fa-twitter"></i>
					</div>

					<!-- SITEMAP -->

					<ul class="my-3 d-flex">
						<li><a href="#">Produtos</a></li>
						<li><a href="#">Sobre A Loja</a></li>
						<li><a href="#">Ajuda</a></li>
						<li><a href="#">Contato</a></li>
						<li><a href="#">Minha Conta</a></li>
						<li><a href="#">Carrinho</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
					</ul>

					<!-- DISCLAIMER -->

					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati consequatur, a ratione molestias corporis nihil, atque odit, fugiat modi et voluptatem culpa quia neque non ut veniam dolore dolorem aperiam!</p>

				</div>

				<div class="col-3 p-0 d-flex align-items-center justify-content-center">

					<!-- LOGO -->

					<img class="img-fluid" src="http://localhost:8888/projeto-integrador/assets/img/logo.png" alt="Logo">

				</div>
			</div>
		</footer>




		<!-- SCRIPTS -->

		<!-- CDN Bootstrap 4.3.1 (js) -->
		<script integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

		<!-- funcoes.js global do projeto (compartilhado por todas as páginas) -->
		<script type="text/javascript" src=<?='"'. ROOT_PATH . 'assets/js/funcoes.js"'?>></script>
	</body>
</html>