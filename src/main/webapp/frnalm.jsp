<%-- 
    Document   : frmaviso
    Created on : 23 may. 2023, 21:00:03
    Author     : Daniel
--%>

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
        }
        
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            margin-top: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        h1 {
            margin-bottom: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        table td {
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
        
        table td:first-child {
            width: 30%;
            font-weight: bold;
        }
        
        table input[type="text"],
        table input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        table input[type="submit"] {
            padding: 10px 20px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        table input[type="submit"]:hover {
            background-color: darkgreen;
        }
    </style>
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
        <h1>Nuevo registro</h1>
        <form action="Inicio" method="post">
            <input type="hidden" name="id" value ="${aviso.id}"/>
            <table>
                <tr>
                    <td>Descripción</td>
                    <td><input type="text" name="descripcion" value="${aviso.descripcion}" /></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="number" step="0.01"  name="cantidad" value="${aviso.cantidad}" /></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="${aviso.precio}" /></td>
                </tr>
                <tr>
                    <td>Categoría</td>
                    <td><input type="text" name="categoria" value="${aviso.categoria}" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Guardar" /></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
