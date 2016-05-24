**Regex function to validate date as DD.MM.YYYY**

```js
function validateDateType (date) {
    var dateReg = /^\d{2}\.\d{2}\.\d{4}$/;
    return date.match(dateReg);
}
```
