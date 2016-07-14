<?php

function showOffset($n, $offsetItem) {
    $result = "";

    $i = 0;
    while ($i < $n) {
        $result .= $offsetItem;
        $i++;
    }
    return $result;
}

function showArray($data, $i = 0) {
    $result = "";
    $offsetItem = php_sapi_name() == 'cli' ? " " : "&nbsp";
    $strSeparator = php_sapi_name() == 'cli' ? "\n" : "<br>";
    $offset = showOffset($i, $offsetItem);
    $offsetElem = showOffset($i + 4, $offsetItem);

    if (is_array($data) || is_object($data)) {
        $result .= is_array($data) ? "Array($strSeparator" : "stdClass($strSeparator";
        if (!empty((array)$data)) {
            $itemArr = [];
            foreach ($data as $key => $item) {
                if (is_array($item) || is_object($item)) {
                    $itemArr[] = $offsetElem . "[$key] => " . showArray($item, $i+4);
                } else {
                    $itemArr[] = $offsetElem . "[$key] => " . $item;
                }
            }
            $result .= implode(",$strSeparator", $itemArr) . $strSeparator;
        }
        $result .= $offset . ')';
    } else {
        $result .= $offset . $data . $strSeparator;
    }

    return $result . ($i===0 ? $strSeparator : '');
}

// =====================================================================================================================
//  DEBUG
// =====================================================================================================================


$obj = new stdClass();
$obj->students = array('Kalle', 'Ross', 'Felipe');

$empty = new stdClass();

$arr = array(1, 2, 3, array(4, 5), array(6, 7, 8, array(9, $obj, $empty)));

// echo '<pre>';
echo showArray($arr);
