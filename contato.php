<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "fseletro";


    $conn = mysqli_connect($servername, $username, $password, $database);

    if(!$conn){

        die("A conexão ao Banco de dados falhou".mysqli_connect_error());
    }

    if(isset($_POST['nome']) && isset($_POST['msg'])){
        $nome = $_POST['nome'];
        $msg = $_POST['msg'];
        $sql = "insert into comentarios (nome, msg) values('$nome','$msg')";
        $result = $conn->query($sql);
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Produtos - Full Stack Eletro</title>
    <link rel="stylesheet" href="./CSS/estilo.css">
</head>

<body>
    
    <!-- Inicio do menu superior -->

    <?php
        include_once('menu.html');
    ?>

    <!-- Fim do menu superior -->
    <br><br>

    <h2>Contatos</h2>
    </header>
    <hr>
    <!-- Inicio meios de contato -->
    <div class="container_contatos">
        <div class="zap">
            <img src="./imagens/whatsapp.png" alt="">
            <p>(11) 99999-9999</p>
        </div>
        <div class="email">
            <img src="./imagens/email.png" alt="">
            <p>contato@fullstackeletro.com</p>
        </div>
    </div>
    <!-- Fim meios de contato -->
        
    <!-- Inicio fale conosco -->

        <form method="post" action="">
            <h4>Nome: </h4>
            <input class="nome" type="text" name="nome" style="width: 400px;">
            <h4>Mensagem:</h4>
            <input class="area_texto" type="textarea" name= "msg" style="width: 400px;"></input type="textarea"><br>
            <input class="enviar" type="submit" name="submit">
        </form>
     
      <!--Teste de envio de pedido-->

        <?php

            $sql = "select * from comentarios";
            $result = $conn->query($sql);

            if($result->num_rows > 0){

                while($rows = $result->fetch_assoc()){
                  echo "Nome: ", $rows['nome'], "<br>";
                  echo "Msg: ", $rows['msg'], "<br>";
                  echo "Data: ", $rows['data'], "<br>";
                  echo "<hr>";

         ?>
    
    <?php
        }
            } else {
             echo "Nenhum comentario ainda!";
            }

    ?>

          <!-- Fim do Teste de envio de pedido-->


    </main>
    
    <!-- Fim fale conosco  -->
    <br><br><br>

    <footer id="rodape">

        <p id="formas_pagamento"><b>Formas de pagamento:</b></p>
        <img src="./imagens/formas-pagamento.png">
        <p>&copy;Recode Pro</p>
        <p>Desenvolvido por Marcos dos Anjos Bernardes da Silva Junior</p>
    
    </footer>
</body>
</html>