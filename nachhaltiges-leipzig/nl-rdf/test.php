<?php
/** Test der API-Schnittstelle */

function getFileFromAPI($file) {
    $src="http://daten.nachhaltiges-leipzig.de/api/v1/$file";
    return file_get_contents($src);
}

function collectAllPredicates($file) {
    $string=getFileFromAPI($file); 
    $res=json_decode($string, true);
    // print_r($res);
    $out=''; 
    $a=array();
    foreach ($res as $row) {
        $a=collectPredicates($a,$row);
    }
    $b=array();
    foreach ($a as $key => $value) {
        $b[]="* $key => $value";
    }    
    return join("\n",$b)."\n";
}

function collectAllPredicatesByType($file) {
    $string=getFileFromAPI($file); 
    $res=json_decode($string, true);
    // print_r($res);
    $out=''; 
    $a=array();
    foreach ($res as $row) {
        $a=collectPredicatesByType($a,$row);
    }
    $out='';
    foreach ($a as $type => $hash) {
        $b=array();
        foreach ($hash as $key => $value) {
            $b[]="* $key => $value";
        }
        $out.="$type:\n".join("\n",$b)."\n";
    }
    return $out;
}

function collectPredicates($a,$row) {
    foreach($row as $key => $value) {
        $a[$key]=(is_array($value) ? "Array" : "String" );
    }
    return $a ;
}

function collectPredicatesByType($a,$row) {
    $type=$row["type"];
    foreach($row as $key => $value) {
        $a[$type][$key]=(is_array($value) ? "Array" : "String" );
    }
    return $a ;
}


echo CollectAllPredicatesByType("activities.json");
//echo CollectAllPredicates("activities.json");
//echo CollectAllPredicates("categories.json");
//echo CollectAllPredicates("products.json");
//echo CollectAllPredicates("trade_types.json");
//echo CollectAllPredicates("trade_categories.json");
//echo getFileFromAPI("categories.json");
//echo getFileFromAPI("products.json");
//echo getFileFromAPI("trade_types.json");
//echo getFileFromAPI("trade_categories.json");
