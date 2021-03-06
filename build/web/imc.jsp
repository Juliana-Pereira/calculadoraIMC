<%@page import="br.uninove.Imc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>calculadora IMC</title>
    </head>
    <body>
        <h1>Calculadora IMC</h1>
        <hr>
        <h4>O índice de massa corporal é uma medida internacional usada para calcular se uma pessoa está no peso ideal.</h4>
        <%-- request.getParameter("peso") sempre retorna uma string - java EE--%>
        <% 
            float peso, altura;
            peso = Float.parseFloat(request.getParameter("peso"));
            altura = Float.parseFloat(request.getParameter("altura"));
            
           Imc imc = new Imc();
          
            imc.setAltura(altura);
            imc.setPeso(peso);
        %>
        <strong>Dados informados: </strong>
        <ul>
            <li><strong>Peso: </strong><%= peso %> Kg</li>
            <li><strong>Altura: </strong><%= altura %> m</li>
        </ul>
        <strong>Calculo do IMC:</strong>
        <ul>
            <li><strong>IMC: </strong><%= String.format("%.2f", imc.calculaIMC()) %></li>
           <li><strong>Classificação: </strong><%= imc.getClassificacao() %></li>
        </ul>
    </body>
</html>
