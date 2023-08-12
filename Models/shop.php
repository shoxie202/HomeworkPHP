<?php
require_once("model.php");
class Shop extends Model
{
    
    function loaisp($a,$b)
    {
        $query = "SELECT * FROM typeproduct WHERE  CategoryID = 1 LIMIT $a, $b";

        require("result.php");
        
        return $data;
    }
    function keywork($a)
    {
        $a = "'%".$a."%'";
        $query = "SELECT * FROM Product WHERE  ProductName LIKE $a LIMIT 0,9";

        require("result.php");
        
        return $data;
    }
    function dongia($a,$b)
    {
        if($a ==0 ){
            $a = "30000";
        }else{
            $a = $a."000000";
        }
        $b = $b."000000";
        $query = "SELECT * FROM Product WHERE  ProductPrice > $a AND ProductPrice < $b  LIMIT 0, 9";

        require("result.php");
    
        return $data;
    }

    function chitiet_loai($loai,$sp)
    {
        $query = "SELECT * FROM typeproduct WHERE  TypeproductName = '$loai' and CategoryID = $sp";

        require("result.php");
        
        return $data;
    }
    function chitiet($id,$sp)
    {
        $query = "SELECT * FROM Product WHERE  TypeproductID  = '$id' and CategoryID = $sp";

        require("result.php");
        
        return $data;
    }
    function Product_noibat()
    {
        $query = "SELECT * FROM Product WHERE Productid = (SELECT Productid sp FROM billdetail GROUP BY Productid ORDER BY COUNT(Productid) DESC LIMIT 1)";

        return $this->conn->query($query)->fetch_assoc();
    }
    function count_sp()
    {
        $query = "SELECT COUNT(Productid) as tong FROM Product";

        return $this->conn->query($query)->fetch_assoc();
    }
    function count_sp_dm($dm)
    {
        $query = "SELECT COUNT(Productid) as tong FROM Product WHERE CategoryID = $dm";

        return $this->conn->query($query)->fetch_assoc();
    }
    function count_sp_ctdm($dm,$ctdm)
    {
        $query = "SELECT COUNT(Productid) as tong FROM Product WHERE CategoryID = $dm And MaLSP = $ctdm";

        return $this->conn->query($query)->fetch_assoc();
    }
}