<%-- 
    Document   : productDetail
    Created on : 17-Oct-2017, 14:57:39
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="test" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
<link href="css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Halaman Detail Produk</h1>
        <h2>Keranjang</h2>
       <p>
            <table class="table table-inverse">
                <thead >
                    <tr>
                        <th>ID</th>
                        <th>NAMA PRODUK</th>
                        <th>HARGA PRODUK</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${prod.id}</td>
                        <td>${prod.productname}</td>
                        <td>${prod.price}</td>
                    </tr>
                    
                </tbody>
                
            </table>
    </p>
<!--                    <button>Tambah</button></a>-->
            <a href="addCarts"><button type="button" class="btn btn-primary">Tambah</button></a>
<!--       
            <p>
                ID    : ${prod.id}</br>
                NAME  :${prod.productname}</br>
                PRICE :${prod.price}
            </p>-->
    </body>
</html>
