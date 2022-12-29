<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>SPRING</title>
</head>
<body>
<h1>SPRING (ну почти)</h1><hr>
<!--<form action="/" method="get">
    <input type="text" name="title"/><br>
    <input type="submit" value="Поиск"/>
</form>-->
<p>
    <#list products as product>
        <div>
            <p>${product.title} ${product.price} руб.</p>
            <p>${product.description}</p>
            <a href="/product/${product.id}">Подробнее</a>
            <hr>
        <#else>
            <h3>Товаров нет</h3>
        </div>

    </#list>
</p>


<h3>Создать новое объявление</h3>

<form action="/product/create" method="post" enctype="multipart/form-data"><br>
    <div class="form-elem-wrapper">
        <p class="form-p">Продукт</p>
        <input class="form-input" type="text" name="title"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Описание</p>
        <input class="form-input" type="text" name="description"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Цена</p>
        <input class="form-input" type="number" name="price"/><br>
    </div>
    <div class="form-elem-wrapper">
        <P class="form-p">Продавец</P>
        <input class="form-input" type="text" name="author"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Адрес</p>
        <input class="form-input" type="text" name="city"/><br>
    </div>
    <!--3 фотография: <input type="file" name="file3"/><br>-->
    <div class="submit-div">
        <input class="submit-input" type="submit" value="Добавить объявление"/><br>
    </div>
</form>




</body>
</html>