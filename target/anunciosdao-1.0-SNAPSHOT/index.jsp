<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Almacen"%>
<%
    List<Almacen> avisos = (List<Almacen>)request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .green-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: green;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        tr:hover {
            background-color: #ddd;
        }
        
        .edit-icon,
        .delete-icon {
            display: inline-block;
            padding: 5px;
            border-radius: 3px;
            color: #fff;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        
        .edit-icon {
            background-color: #007bff;
        }
        
        .delete-icon {
            background-color: #dc3545;
        }
        
        .edit-icon i,
        .delete-icon i {
            margin-right: 5px;
        }
        
        .edit-icon:hover,
        .delete-icon:hover {
            background-color: #0056b3;
        }
    </style>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
     
</head>
<body>
    <div class="container">
        <table>
            <td>
                <p>SEGUNDO PARCIAL TEM-742<p>
                <p>Nombre: MAMANI ROJAS LUIS DANIEL<p>
                <p>Carnet: 8326714 L.P.<p>
            </td>
        </table>
        <div class="header">
            <h1>Gestión de Productos</h1>
            <p><a href="Inicio?action=add" class="green-button">Nuevo producto</a></p>
        </div>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoría</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${avisos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}" class="edit-icon"><i class="fas fa-edit"></i>Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('¿Estás seguro?'))" class="delete-icon"><i class="fas fa-trash-alt"></i>Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
