USEFUL PHP
==========

*In this file stored all PHP Scripts from this folder*

***

**Explode string and push to variables using _list_**

```php
$address = 'Kiev, Kreschatyk 45, appt. 220';

list($city, $street) = explode(',', $address, 2);
echo trim($city);
echo '<br>';
echo trim($street);
```

***

**Regex to separate string by comma**

```php
$address = 'Kiev, Kreschatyk 45, appt. 220';

$city = $street = '';
if (preg_match('/^([^,]+),(.+)$/', $address, $match)) {
    $city = trim($match[1]);
    $street = trim($match[2]);
}

echo trim($city);
echo '<br>';
echo trim($street);
```

***

**Regex to cut string before and after comma**

```php
$address = 'Kiev, Kreschatyk 45, appt. 220';

$city = $street = '';
if (preg_match('/[^,]*/', $address, $cityMatch)) {
    $city = $cityMatch[0];
}
if (preg_match('/(?<=,).*/', $address, $streetMatch)) {
    $street = trim($streetMatch[0]);
}

echo trim($city);
echo '<br>';
echo trim($street);
```

***

**Regex to get filename without extension**

```php
$file['name'] = 'phpunit-book.pdf';
$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file['name']);
echo $fileName;

$lastCharacter = substr($fileName, -1);
$preLastCharacter = substr($fileName, -2, 1);
```
