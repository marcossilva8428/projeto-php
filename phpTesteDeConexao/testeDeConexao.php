<!DOCTYPE html>
<html>
<head>
	<title>PHP Connect test</title>
</head>
<body>

	<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$database = "fseletro";


	$conn = mysqli_connect($servername, $username, $password, $database);

	if(!$conn){

		die("A conexão falhou".mysqli_connect_error());
	}

	$sql = "select idproduto,data_inclusao,categoria,descricao,preco,precofinal,imagem from produto";
	$result = $conn ->query($sql);

	print_r($result);

	while ($row = $result->fetch_assoc()){

		echo "<p><hr>O produto com id: ".$row['idproduto']." "."foi incluido no estoque em:".$row['data_inclusao']." "."na categoria: ".$row['categoria']." "."com a descricao: ".$row['descricao']." "."tem como preco original: ".$row['preco']." "."porem recebeu desconto e agora o esta com o preco: ".$row['precofinal']." "."segue a imagem do produto: ".$row['imagem']."</p><hr>";
	}


	?>

</body>
</html>