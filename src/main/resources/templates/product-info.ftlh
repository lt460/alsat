<!doctype html>
<html lang="ru">
<head>

    <title>Alsat</title>
</head>
<body>
<H1>ALSAT</H1>
<h4>Подробная информация о товаре</h4>
<b>Название товара: </b> ${product.title} <br>
<b>Описание товара: </b> ${product.description} <br>
<b>Цена товара: </b> ${product.price} <br>
<b>Город товара: </b> ${product.city} <br>
<b>Автор товара: </b> ${product.author} <br>
    <hr>
    <h3>Удалить товар</h3>
    <form action="/product/delete/${product.id}" method="post">
        <input type="submit" value="Удалить товар"/>
    </form>
</body>
</html>