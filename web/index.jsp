
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    HttpSession sessions = request.getSession();
    String name = "";
    String choice = "";
        
    if (request.getParameter("Entrar") != null) {
        name = request.getParameter("userName");
        sessions.setAttribute("name", name);
    }
        name = (String) sessions.getAttribute("name");
    
    if (request.getParameter("Sair") != null) {
        sessions = request.getSession();
        sessions.invalidate();
//        sessions = request.getSession();
//        choice = request.getParameter("Sair");
//        
//        if (choice == "Sim") {
//            sessions = request.getSession(false);
//            sessions.invalidate();
//            
//        }
    }    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questionário</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <% if (name != null) {%>
           <h1>Olá <%= name%></h1>
           
           <p>Clique <a href="quiz.jsp">aqui</a> para realizar o quiz</p>
           
           <!--<h1>Deseja sair? <%= choice%></h1>-->
        <% } else { %>
           <h1>Usuário não credenciado</h1>
        <% } %>
        
    </body>
</html>
