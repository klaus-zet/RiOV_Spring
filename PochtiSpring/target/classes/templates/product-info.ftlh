<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SPRING</title>
</head>
<body>
<h1>SPRING (ну почти)</h1><hr>
<h4>информация об объявлении</h4>

<b>Продукт: </b>${product.title?if_exists}<br>
<b>Описание: </b>${product.description?if_exists}<br>
<b>Цена: </b>${product.price?if_exists}<br>
<b>Адресс: </b>${product.city?if_exists}<br>
<b>Продавец: </b>${product.author?if_exists}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить объявление"/>
</form>


<form action="/product/edit/${product.id}" method="post" enctype="multipart/form-data">
    <!--<input type="number" name="id"/><br>-->

    <input type="text" name="title"/><br>

    <input type="text" name="description"/><br>

    <input type="number" name="price"/><br>

    <input type="text" name="author"/><br>

    <input type="text" name="city"/><br>


    <input type="submit" value="обновить объявление"/><br>
</form>


</body>
</html>