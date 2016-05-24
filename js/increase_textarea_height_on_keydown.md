**Increase textarea height on keydown**

```js
$("textarea#element_id").keydown(function () {
    this.style.height = '100px';     //Reset height, so that it not only grows but also shrinks
    this.style.height = (this.scrollHeight+25) + 'px';    //Set new height
});
```
