**Regex function to validate url**

```js
function validateUrl (url) {
    var reg = /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/;
    return reg.test(url);
}
```
