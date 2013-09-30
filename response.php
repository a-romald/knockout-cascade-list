<?php

$db = new PDO("mysql:host=localhost;dbname=db1",'user','password');
$db->exec('SET CHARACTER SET utf8');

//Retrive list of departments
if($_SERVER['HTTP_X_REQUESTED_WITH']=='XMLHttpRequest' && $_GET['option'] == 'depts') {
    try {
        $sql = "SELECT id, title FROM departments";
        $stmt = $db->query($sql);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
        }
    catch(PDOException $e)
        {
        echo $e->getMessage();
        }

}

//Retrive list of companies
elseif ($_SERVER['HTTP_X_REQUESTED_WITH']=='XMLHttpRequest' && $_GET['option'] == 'companies') {
    try {
        $dept = $_GET['dept'];
        $dept = intval($dept);
        $stmt = $db->prepare("SELECT id, title FROM companies WHERE id_dept = ?");
        $stmt->bindParam(1, $dept, PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
        $db = null;
        }
    catch(PDOException $e)
        {
            echo $e->getMessage();
        }
}
        
//Retrive list of products
elseif ($_SERVER['HTTP_X_REQUESTED_WITH']=='XMLHttpRequest' && $_GET['option'] == 'products') {
    try {
        $company = $_GET['company'];
        $company = intval($company);
        $stmt = $db->prepare("SELECT id, title FROM products WHERE id_company = ?");
        $stmt->bindParam(1, $company, PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
        $db = null;
        }
    catch(PDOException $e)
        {
            echo $e->getMessage();
        }
}

//Получаем данные о сочинении
elseif ($_SERVER['HTTP_X_REQUESTED_WITH']=='XMLHttpRequest' && $_GET['option'] == 'good') {
    try {
        $product = $_GET['product'];
        $product = intval($product);
        $stmt = $db->prepare("SELECT * FROM products WHERE id = ?");
        $stmt->bindParam(1, $product, PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        echo json_encode($result);
        $db = null;
        }
    catch(PDOException $e)
        {
            echo $e->getMessage();
        }
}               

?>