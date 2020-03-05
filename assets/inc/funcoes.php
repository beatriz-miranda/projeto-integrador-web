<?php
	// funcoes.php

	// Sanitiza e minifica HTML
	function minify_output($output)
	{
		$search = array
		(
	        '/\>[^\S ]+/s',     // Espaços em branco depois de tags HTML
	        '/[^\S ]+\</s',     // Espaços em branco antes de tags HTML
	        '/(\s)+/s',         // Múltiplos espaços em branco
	        '/<!--(.|\s)*?-->/' // Comentários HTML
	    );

	    $replace = array
	    (
	        '>',
	        '<',
	        '\\1',
	        ''
	    );

	    return preg_replace($search,$replace,$output);
	}

	// Realiza a minificação do HTML via Output Buffer (OB)
	function start_minification()
	{
		ob_start("minify_output");
	}

	// Termina a minificação do HTML via Output Buffer (OB) - Remove do buffer e apresenta a página
	function end_minification()
	{
		ob_end_flush();
	}
