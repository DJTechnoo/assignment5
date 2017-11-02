<?php

include_once('credentials.php');

class Mover{
	protected $db;
	
	public function __construct(){				// init the pdo
		$this->db = new PDO('mysql:host='.HOST.';dbname='.DBNAME.';charset=utf8',
							USR, PWD);
	}
	
	
	//			This function puts a club into "clubs"
	public function moveClubs($clubId, $clubName, $city, $county)
	{
		$sql = "INSERT INTO clubs (clubId, clubName, city, county) 
				VALUES (:clubId, :clubName, :city, :county)";		// sql statment
				
		$stmt = $this->db->prepare($sql);			// binding values
		$stmt->bindValue(':clubId', $clubId);
		$stmt->bindValue(':clubName', $clubName);
		$stmt->bindValue(':city', $city);
		$stmt->bindValue(':county', $county);
		$afNo = $stmt->execute();
		
	}
	
	//			This function puts a skier in "skiers"
	public function moveSkiers($userName, $fName, $lName, $bYear, $clubId)
	{
		$sql = "INSERT INTO skiers (userName, fName, lName, bYear, clubId) 
				VALUES (:userName, :fName, :lName, :bYear, :clubId)";		// sql statment
				
		$stmt = $this->db->prepare($sql);			// binding values
		$stmt->bindValue(':userName', $userName);
		$stmt->bindValue(':fName', $fName);
		$stmt->bindValue(':lName', $lName);
		$stmt->bindValue(':bYear', $bYear);
		if($clubId != NULL){$stmt->bindValue(':clubId', $clubId);} // if part of club
		else{$stmt->bindValue(':clubId', NULL);}				// not part of club
		
		$afNo = $stmt->execute();
		
	}
	
	//			This function gets the fallYear and moves to table"season"
	public function moveSeasons($fallYear){
		$sql = "INSERT INTO season(fallYear) VALUES(:fallYear)";  // sql stamement
		
		$stmt = $this->db->prepare($sql);
		$stmt->bindValue(':fallYear', $fallYear);		// bind to fallYear
		$afNo = $stmt->execute();
	}
	
	//		This function gets the fallYear, userName and totalDistance
	//				and moves to table "log"
	public function moveDistance($userName, $fallYear, $totalDistance){
		$sql = "INSERT INTO log(userName_fk, fallYear_fk, totalDistance) 
						 VALUES(:userName, :fallYear, :totalDistance)";  // sql stamement
		
		$stmt = $this->db->prepare($sql);
		$stmt->bindValue(':userName', $userName);		// bind to fallYear
		$stmt->bindValue(':fallYear', $fallYear);
		$stmt->bindValue(':totalDistance', $totalDistance);
		$afNo = $stmt->execute();
	}
	
	
	
}


?>