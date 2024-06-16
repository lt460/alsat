<!doctype html>
<html lang="ru">
<head>

    <title>Alsat</title>
</head>
<body>
<H1>ALSAT</H1>
<h4>Товары со всего Кыргызстана</h4>
<form action="/" method="get">
    Поиск товара: <input type="text" name = "title"><br>
    <input type="submit" value="Поиск">
</form>
<#list products as product>
    <div>
        <p>
            ${product.title} - ${product.price} | <a href="/product/${product.id}">Подробнее</a>
        </p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название товара: <input type="text" name = "title"/><br><br>
        Описание товара: <input type="text" name = "description"/><br><br>
        Цена товарв: <input type="number" name = "price"/><br><br>
        Город: <input type="text" name = "city"/><br><br>
        Автор: <input type="text" name = "author"/><br><br>
        Фото - 1: <input type="file" name = "file1"/><br><br>
        Фото - 2: <input type="file" name = "file2"/><br><br>
        Фото - 3: <input type="file" name = "file3"/><br><br>

         <input type="submit" value="Добавить товар" />
    </form>

</body>
</html>