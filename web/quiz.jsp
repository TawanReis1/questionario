<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    HttpSession sessions = request.getSession();
    String name = (String) sessions.getAttribute("name");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        
        <form action="index.jsp">
            <% for (Question question: DB.getAllQuestions()) { %>
               <h3><%= question.getQuestion() %></h3>
               
               <% for (String option: question.getOptions()) { %>
                  <h4><input type="radio" name="<%= question.getQuestion() %>" value="<%= option %>" /><%= option %></h4>
               <% } %>
                  
            <% } %>
        <a href="index.jsp">Voltar</a>
        <input type="submit" name="doneQuiz" value="Enviar"/>
        <input type="hidden" name="userName" value="<%= name %>" />
        </form>

</html>
