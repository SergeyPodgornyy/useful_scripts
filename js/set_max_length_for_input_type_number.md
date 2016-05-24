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
