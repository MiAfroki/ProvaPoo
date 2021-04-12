<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nota Disciplina</title>
    </head>
    <body>
        <div class="container">
            <h2>Cálculo de Aprovado ou Reprovado</h2>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Estudante</th>
                        <th>P1</th>
                        <th>P2</th>
                        <th>Média</th>
                        <th>Resultado Final</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Aluno</td>
                    <td><input type="number" value="0" min="0.0" step="0.1" max="10.0" name="n1" onchange="calcula_media(0)"></td>
                    <td><input type="number" value="0" min="0.0" step="0.1" max="10.0" name="n2" onchange="calcula_media(0)"></td>
                    <td><div name="media">0,0</div></td>
                    <td><div name="resultado">--</div></td>
                </tbody>                   
            </table>
        </div>
        
        <script>
            function calcula_media(i){
                var N1 = document.getElementsByName("n1")[i].value;
                var N2 = document.getElemetsByName("n2")[i].value;
                var calculo= (parseFloat(N1)+ parseFloat(N2))/2;
                var media = document.getElementsByName("media")[i];
                media.innerHTML=calculo;
                var result = document.getElemetsByName("resultado")[i];
                if(calculo>=0.7){
                    result.innerHTML = "Aprovado";
                }else{
                    result.innerHTML="Reprovado";
                }
            }
            </script>
    </body>
</html>
