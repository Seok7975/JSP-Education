<%@page import="java.util.List"%>
<%@page import="com.example.Task"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String taskId = request.getParameter("taskId");
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");
    if (tasks != null) {
        tasks.removeIf(task -> task.getId().equals(taskId));
    }
    session.setAttribute("tasks", tasks);
    response.sendRedirect("planner.jsp");
%>
