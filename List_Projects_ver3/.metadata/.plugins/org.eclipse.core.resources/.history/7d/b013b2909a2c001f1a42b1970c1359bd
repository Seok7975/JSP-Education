<%@page import="java.util.UUID"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.example.Task"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String newItem = request.getParameter("item");
    String startDateTime = request.getParameter("startDateTime");
    String dueDateTime = request.getParameter("dueDateTime");
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");
    if (tasks == null) {
        tasks = new ArrayList<>();
    }
    tasks.add(new Task(UUID.randomUUID().toString(), newItem, startDateTime, dueDateTime));
    session.setAttribute("tasks", tasks);
    response.sendRedirect("planner.jsp");
%>
