<!doctype html>
<html lang="ru">
<head>

    <title>Alsat</title>
</head>
<body>
<H1>ALSAT</H1>
<h4>Товары со всего Кыргызстана</h4>
<#list products as product>
    <div>
        <p>
            ${product.title} - ${product.price} | <a href="/product/${product.id}">Подробнее</a>
        </p>
    </div>
</#list>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post">
        Название товара: <input type="text" name = "title"/><br><br>
        Описание товара: <input type="text" name = "description"/><br><br>
        Цена товарв: <input type="number" name = "price"/><br><br>
        Город: <input type="text" name = "city"/><br><br>
        Автор: <input type="text" name = "author"/><br><br>
         <input type="submit" value="Добавить товар" />
    </form>

</body>
</html>