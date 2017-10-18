<%-- 
    Document   : product
    Created on : 17-Oct-2017, 14:57:25
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pro" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" 
              integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h1>Halaman Product</h1>
           <h2>Total Keranjang: ${bucket.size()}</h2>

        <p>
            <table class="table table-inverse">
                <thead>
                    <tr>
                        <th> ID </th>     
                        <th> NAMA PRODUK </th>     
                    </tr>  
                </thead>
                <tbody>
                     <pro:forEach items="${product}" var="pr">
                    <tr>
                        <td>
                         ${pr.id}
                        </td>
                        <td>
                        <a href="${pr.id}"> ${pr.productname}</a>
                        </td>
                        
                    </tr>
                    </pro:forEach>
                </tbody>
            </table>
        </p>
                   <a href="../bucketShop">Lihat Keranjang</a>
    </body>
</html>
