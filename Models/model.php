<?php
require_once("connection.php");
class model
{
    var $conn;
    function __construct()
    {
        $conn_obj = new connection();
        $this->conn = $conn_obj->conn;
    }
    function limit($a, $b)
    {
        $query =  "SELECT * from product WHERE Productstatus = 1  ORDER BY Producttime DESC limit $a,$b";

        require("result.php");

        return $data;
    }
    function Category()
    {
        $query =  "SELECT * from Category ";

        require("result.php");
        
        return $data;
    }
    function CategoryDetail($id)
    {
        $query =  "SELECT d.CategoryName as Cname, l.* FROM Category as d, typeproduct as l WHERE d.CategoryID = l.CategoryID and d.CategoryID = $id";

        require("result.php");
        
        return $data;
    }

    function typeproduct($id)
    {
        $query =  "SELECT d.CategoryName as Cname, l.* FROM Category as d, typeproduct as l WHERE d.CategoryID = l.CategoryID and d.CategoryID = $id";

        require("result.php");
        
        return $data;
    }

    function random($id)
    {
        $query = "SELECT * FROM product WHERE Productstatus = 1 ORDER BY RAND () LIMIT $id";
        require("result.php");
        
        return $data;
    }
    function banner($a,$b)
    {
        $query =  "SELECT * from Banner  limit $a,$b";

        require("result.php");
        
        return $data;
    }
    function product_Category($a, $b, $Category)
    {
        $query =   "SELECT * from product WHERE Productstatus = 1  and CategoryID = $Category ORDER BY Producttime DESC limit $a,$b";

        require("result.php");
        
        return $data;
    }
}
