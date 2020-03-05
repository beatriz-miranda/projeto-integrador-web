<?php
	// footer.php

	// Load das constantes do projeto
	require_once "constantes.php";
?>


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

					<img class="img-fluid" src="http://localhost:8888/projeto-integrador/assets/img/logo-claro-1.png" alt="Logo">

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
