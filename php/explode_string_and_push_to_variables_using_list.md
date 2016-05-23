**Explode string and push to variables using _list_**

```php
$address = 'Kiev, Kreschatyk 45, appt. 220';

list($city, $street) = explode(',', $address, 2);
echo trim($city);
echo '<br>';
echo trim($street);
```
