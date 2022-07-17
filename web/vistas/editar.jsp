<%@page import="dao.DAOAlumno"%>
<%@page import="servlets.SAlumno"%>
<%@page import="beans.Alumno"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="vistas/stylu.css">
    <title>EDITAR</title>
</head>
    
    <body>
              <% 
                    DAOAlumno dao    = new DAOAlumno();
                    Alumno alumno    = new Alumno();
                    String matricula = request.getAttribute("matricula").toString();
                    alumno           = dao.buscar(matricula);
              %>
              <div><br><br><br><br><br><br>
            <h3>EDITAR ALUMNO</h3>
            <form action="SAlumno" method="POST">
            <table>
                <thead>
                    <tr>
                       
                        <th>MATRICULA</th>
                        <th>NOMBRE</th>
                        <th>APELLIDOS</th>
                        <th>DDI</th>
                        <th>DWI</th>
                        <th>ECBD</th>
                        <th colspan="2">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                            <input type="hidden" name="tfMatriculaOld" value="<%=alumno.getMatricula()%>">
                        
                        <td><input type="text"   name="tfMatricula"   value="<%=alumno.getMatricula()%>"></td>
                        <td><input type="text"   name="tfNombre"      value="<%=alumno.getNombre()%>">   </td>
                        <td><input type="text"   name="tfApellidos"   value="<%=alumno.getApellidos()%>"></td>
                        <td><input type="text"   name="tfDwi"         value="<%=alumno.getDwi()%>">      </td>
                        <td><input type="text"   name="tfCjv"         value="<%=alumno.getCjv()%>">      </td>
                        <td><input type="text"   name="tfEcbd"        value="<%=alumno.getEcbd()%>">     </td>
                        <td><input type="submit" name="accion"        value="ACTUALIZAR"                                             /></td>  
                        <td><a href="SAlumno"><button>REGRESAR</button>                                                                   </a></td>
                    </tr>
                </tbody>
            </table>
        </form>  
    </div>
       
</body>
</html>
