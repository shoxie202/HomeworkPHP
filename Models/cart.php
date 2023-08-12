<?php
require_once("model.php");
class Cart extends Model
{
    function detail_sp($id)
    {
        $query =  "SELECT * from product where ProductID = $id ";
        $result = $this->conn->query($query);
        return $result->fetch_assoc();
    }
}