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
