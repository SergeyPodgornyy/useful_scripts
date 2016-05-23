**Regex to get filename without extension**

```php
$file['name'] = 'phpunit-book.pdf';
$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $file['name']);
echo $fileName;

$lastCharacter = substr($fileName, -1);
$preLastCharacter = substr($fileName, -2, 1);
```
