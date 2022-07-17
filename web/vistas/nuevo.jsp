<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="vistas/stylu.css">
        <title>NUEVO</title>
    </head>
    <body>
        <div> <br><br><br><br><br><br>
           <h3>INGRESAR NUEVO ALUMNO</h3>
           <form action="SAlumno" method="POST"><br>
            <table>
                <thead>
                    <tr>
                        <th>MATRICULA</th>
                        <th>NOMBRE</th>
                        <th>APELLIDOS</th>
                        <th>DWI</th>
                        <th>CJV</th>
                        <th>ECBD</th>
                        <th colspan="2">ACCIONES</th>
                    </tr>
                </thead><br><br>
                <tbody>
                    <tr>
                        <td><input type="text"   name="tfMatricula" value="" /></td>
                        <td><input type="text"   name="tfNombre"    value="" /></td>
                        <td><input type="text"   name="tfApellidos" value="" /></td>
                        <td><input type="text"   name="tfDwi"       value="" /></td>
                        <td><input type="text"   name="tfCjv"       value="" /></td>
                        <td><input type="text"   name="tfEcbd"      value="" /></td>
                        <td><input type="submit" name="accion"      value="Agregar"/></td> 
                        <td><a href="SAlumno"><button>REGRESAR</button></a> </td>
                    </tr>
                </tbody>
            </table>
        </form>  
    </div>
       
    </body>
</html>