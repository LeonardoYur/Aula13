<?php
//$nome = $_GET['nome'];
//var_dump($_GET);

include '../conexao.php';

$comandoSQL = "INSERT INTO `tblChamados` (`id`, `departamento`, `descricao`) VALUES (NULL, '{$_GET['nome']}', '{$_GET['desc']}')";

// PDOStatement|false
$resultado = $conexao->query($comandoSQL);

if($resultado) {
    echo "Usuário {$_GET['nome']} cadastrado.";
} else {
    echo "Erro ao cadastrar usuário.";
}


?>