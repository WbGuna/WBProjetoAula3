<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Primeira Pagina JSP:
<%! boolean formatar = true; %> 
<%! 
   String today(){
		java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	} 
%>

	<h1>A Data de hoje é: <%=new java.util.Date()%> </h1> 
	<h1>A Data de hoje é: <%=today()%> </h1>
	<h1>A Data de hoje é: <% if(formatar){
							out.println(today());
							}else{ 
							out.println(new java.util.Date());
							}%> </h1> 





Criar uma página JSP que contenha a utilização de Declaration, Scriptlet e Expression.

<h3>Vou informar a soma dos numeros impares de 3 a 17</h3>

<%! int inicio = 3; %>
<%! int fim = 17; %>
<%! int soma = 0; %>
<% for(int i = inicio; i <= fim; i++){
    if(i % 2 == 1){
        soma += i;
        out.println(soma);
    }	
} 

%>

<h3> A soma de todos os numeros ímpares de 3 até 17 é: <%=soma%></h3>


<h3>Informo se o segundo atual é ímpar ou par</h3>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Date" %>

<% Calendar cal = Calendar.getInstance();	
	Date dt = new Date();
	int segundos = cal.get(Calendar.SECOND); 
	out.println("O SEGUNDO É: " + segundos);
	if(segundos % 2 == 1){
		out.println("\nO SEGUNDO É ÍMPAR");
	} else {
		out.println("\nO SEGUNDO É PAR");
	}
%>
</body>
</html>