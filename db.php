<?php
class Db{
	//Tao bien $conn ket noi
	public static $conn;
	//Tao ket noi trong ham construct
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	public function __destruct(){
		self::$conn->close();
	}
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){

			$arr[]=$row;
		}
		return $arr;
	}
	//Viet ham lay ra tên và giá sản phẩm của hãng “Apple”
	public function product1()
		{
			$sql = "SELECT * FROM `products`,`manufactures`,`protypes` WHERE manufactures.manu_ID = products.manu_id AND protypes.type_id = products.type_id";
			$result = self::$conn->query($sql);
			return $this->getData($result);
		}

	public function product2(){
		if (isset($_GET['key'])) {
			$key = $_GET['key'];
		}
		//Viet cau SQL
		$sql = "SELECT *
		FROM `products` JOIN `manufactures` ON `products`.`manu_id` = `manufactures`.`manu_ID` JOIN `protypes` ON `protypes`.`type_id` = `products`.`type_id`
		WHERE `Name` LIKE '%".$key."%'";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}

	public function login(){
		//Viet cau SQL
		$sql = "SELECT * FROM `login`";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}

	public function getAllProducts($page, $per_page)
		{
			$first_link = ($page - 1) * $per_page; 
			$sql = "SELECT * FROM `products`,`manufactures`,`protypes` WHERE manufactures.manu_ID = products.manu_id AND protypes.type_id = products.type_id LIMIT $first_link, $per_page"; 
			$result = self::$conn->query ($sql);        
			return $this->getData($result);     
		}

	public function paginate($url, $total, $page, $per_page)
	{
		$total_links = ceil($total/$per_page);

		$link =""; 
 
		for($j=1; $j <= $total_links ; $j++) 
  		{
   			$link = $link."<a href='$url?page=$j'> $j </a>";
  		}  

		return $link; 
	}

	public function delete($ID){
		$sql = "DELETE FROM `products` WHERE ID = $ID";
		self::$conn->query($sql);
	}

	public function product5($name ,$type_id,$manu_id ,$description,$price)
	{
		if(isset($_POST['name']))
		{
			$name = $_POST['name'];
			$fileUpload = 'abc.jpg';
			$type_id = $_POST['type_id'];
			$manu_id = $_POST['manu_id'];
			$description = $_POST['description'];
			$price = $_POST['price'];
		}
		$sql = "INSERT INTO products(Name,image,description,Price,manu_id,type_id)
		        VALUES('$name','$fileUpload','$description',$price,$manu_id,$type_id)";
		        var_dump($sql);
		        $result = self::$conn->query($sql);
				return $result;
	}

}