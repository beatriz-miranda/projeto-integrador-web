<?php
	// index.php

	// Load das funções do projeto
	require_once "assets/inc/funcoes.php";

	// Começa o processo de minificação de output HTML
	start_minification();

	// Idioma, título, e metadados + arquivos fonte extras da página
	$PAGE_CONFIG =
	[
		"LANG" => "pt-br",
		"TITLE" => "UNFRAMED",
		"EXTRA_TAGS" => null
	];

	// Fragmentos da página
	require "assets/inc/head.php";
	require "assets/inc/navbar.php";
	require "assets/inc/index.principal.php";
	require "assets/inc/index.sobre_nos.php";
	require "assets/inc/footer.php";

	// Encerra o processo de minificação de output HTML, e apresenta a página
	end_minification();
