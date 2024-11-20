<?php
//$nome = $_GET['nome'];
//var_dump($_GET);

include '../conexao.php';

$comandoSQL = "INSERT INTO `tblDepartamentos` (`id`, `nome`) VALUES (NULL, '{$_GET['nome']}')";

$resultado = $conexao->query($comandoSQL);

$vetor = array();

if($resultado) {
    $vetor['resultado'] = "Usuário {$_GET['nome']} cadastrado.";
} else {
    $vetor['erro'] = "Erro ao cadastrar usuário.";
}

echo json_encode($vetor);

?>