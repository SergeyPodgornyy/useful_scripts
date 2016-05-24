USEFUL JAVASCRIPT
=================

*In this file stored all JS Scripts from this folder*

You can test the code on [JSfiddle](https://jsfiddle.net/)

***

**Regex function to validate date as DD.MM.YYYY**

```js
function validateDateType (date) {
    var dateReg = /^\d{2}\.\d{2}\.\d{4}$/;
    return date.match(dateReg);
}
```

***

**Regex function to validate email**

```js
function validateEmail (val) {
    if (val.length == 0) return true;
    var reg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return reg.test(val);
}
```

***

**Regex function to validate url**

```js
function validateUrl (url) {
    var reg = /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/;
    return reg.test(url);
}
```

***

**Set max length for input[type=number]**

```html
<input type="number" maxlength="11">
```

```js
$('input[type=number]').on('input', maxLengthCheck);

function maxLengthCheck() {
    if (this.value.length > this.maxLength)
        this.value = this.value.slice(0, this.maxLength)
}
```

***

**Increase textarea height on keydown**

```js
$("textarea#element_id").keydown(function () {
    this.style.height = '100px';     //Reset height, so that it not only grows but also shrinks
    this.style.height = (this.scrollHeight+25) + 'px';    //Set new height
});
```
