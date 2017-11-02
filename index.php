<?php

/** *	This is the code for Assignment 5 by Askel Eirik Johansson 
	*			The code consist of 4 files: 
											index.php
											credentials.php
											pdoClass.php
											SkierLogs.xml
											
	*	This code extracts values from elements in the xml file
	*	using DOMDocument, and insert them to a database with PDO
	*	The file "pdoClass" contains functions for PDO.
	*	The index file interacts directly with the xml file.
*/

include_once('pdoClass.php');	// for PDO


		// 		loading SkierLogs DomDocument
$url = 'SkierLogs.xml';
$doc = new DOMDocument();
$doc->load($url);



// 		GETTING CLUBS

// creating xpath
$path = "/SkierLogs/Clubs/Club";	//Clubs path
$xPath = new DOMXpath($doc);
$clubs = $xPath->query($path);		// getting ClubList

/**  The $clubs is a list of clubs. The next chunk of code
  *  will iterate through each "$club". From there the nodes
  *  are going to extract the sub elements.
*/
$clubId     = NULL;
$clubName   = NULL;
$city       = NULL;
$county     = NULL;
	$node = NULL;    // for traversing
	$cRes = array(); // for display testing
	
$mover = new Mover();		// pdo from the pdoClass.php

foreach($clubs AS $club)
{
	$clubId = $club->getAttribute('id');		// Get id (attribute)
		$node = $club->getElementsByTagName('Name');	// traverse
	$clubName = $node->item(0)->textContent;		// Get name
		$node = $club->getElementsByTagName('City');	// traverse
	$city = $node->item(0)->textContent;		// Get city
		$node = $club->getElementsByTagName('County');	// traverse
	$county = $node->item(0)->textContent;		// Get county
	
	$cRes[] = $clubId .' '.$clubName .' '.$city .' '.$county .'<br>'; // for display
	$mover->moveClubs($clubId, $clubName, $city, $county);	// insert to table
	
}
echo 'CLUBS<br>';
//print_r($cRes);
echo '<br><br>';

//   		GETTING SEASONS

$path = "/SkierLogs/Season";
$seasons = $xPath->query($path);    // get all seasons

foreach($seasons AS $season){
	$fallYear = $season->getAttribute('fallYear');	 // gets the fallYear
	print_r('<br>'. $fallYear . '<br>');
	$mover->moveSeasons($fallYear);					// Add to DB
}


// 			GETTING SKIERS 

$path = "/SkierLogs/Skiers/Skier";	// path
$skiers = $xPath->query($path);		// getting skierList

//	As with clubs, skiers iterate as skier and get their
//	elements.

$userName = NULL;
$fName    = NULL;
$lName    = NULL;
$bYear    = NULL;
$club   = NULL;
	$sRes = array();

foreach($skiers AS $skier)
{
	$userName = $skier->getAttribute('userName');		// get userName(attribute)
		$node = $skier->getElementsByTagName('FirstName');	// traverse
	$fName = $node->item(0)->textContent;				// get first name
		$node = $skier->getElementsByTagName('LastName');	// traverse
	$lName = $node->item(0)->textContent;				// get last name
		$node = $skier->getElementsByTagName('YearOfBirth');	// traverse
	$bYear = $node->item(0)->textContent;				// get birth year
	$bYearInt = (int)$bYear;						//	cast bYear to int
	
	
		// The xPath below will return the last club the skier with username attended
		// if the list is not empty, it will use the last index.
	$clubQuery = "/SkierLogs/Season/Skiers[Skier/@userName = '$userName']";
	$lastClub = $xPath->query($clubQuery);	// get clublists of skiers of which a username exists
	if($lastClub->length > 0){				// if username in a club
		$club = $lastClub[$lastClub->length-1];  // club which skier participated in last
		$club = $club->getAttribute('clubId');   //  get the clubId
	}else{$club = NULL;}							// skier was NEVER in a club
	
	$sRes[] = $userName .' '.$fName .' '.$lName .' '.$bYear . ' '.$club .'<br>';	// for display
	$mover->moveSkiers($userName, $fName, $lName, $bYearInt, $club);		// insert to table
}
echo "SKIERS<br>";
print_r($sRes);					// for display
echo "<br>";


//  Obstaining totalDistance FOREACH season FOREACH skier

$fkFallYear = NULL;		// season (FK in database)
$fkUser     = NULL;		// skier  (FK in database)
$totDist    = 0;		// the total distance for each season
$path = "/SkierLogs/Season";		// season path
$seasons = $xPath->query($path);  // get season list
$skierPath = "/SkierLogs/Skiers/Skier";
$skiers = $xPath->query($skierPath);	// all skiers


foreach($seasons AS $season){
	$fkFallYear = $season->getAttribute('fallYear');	// current fall year 
	foreach($skiers AS $skier){
		$fkUser = $skier->getAttribute('userName');		// get userName(attribute)
		
		
		
		
														// each season
		$countPath = "sum(/SkierLogs/Season[@fallYear = '$fkFallYear']		
					/Skiers/Skier[@userName = '$fkUser']/Log/Entry/Distance/text())"; 
											// each skier            sum the distance
											
											
											
		$totDist = $xPath->evaluate($countPath);    // get the distance
		echo '<br>';
		print_r($fkUser .' '. $fkFallYear . ' '. $totDist);  // for display
		$mover->moveDistance($fkUser, $fkFallYear, $totDist); // Add to DB
		echo '<br>';
	}
	
	
	
}



















?>