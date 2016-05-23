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
