<?php
//$nome = $_GET['nome'];
//var_dump($_GET);

include '../conexao.php';

if(isset($_GET['tec'])){
    $tec = $_GET['tec'];
}
else{
    $tec = 'off';
}
$comandoSQL = "INSERT INTO `tblUsuarios` (`id`, `nome`, `email`, `senha`, `tecnico`) VALUES (NULL, '{$_GET['nome']}', '{$_GET['email']}', '{$_GET['senha']}' , '$tec')";

// PDOStatement|false
$resultado = $conexao->query($comandoSQL);

if($resultado) {
    echo "Usuário {$_GET['nome']} cadastrado.";
} else {
    echo "Erro ao cadastrar usuário.";
}


?>