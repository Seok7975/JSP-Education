<%@page import="java.util.List"%>
<%@page import="com.example.Task"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String taskId = request.getParameter("taskId");
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");
    if (tasks != null) {
        for (Task task : tasks) {
            if (task.getId().equals(taskId)) {
                task.setCompleted(!task.isCompleted());
                break;
            }
        }
    }
    session.setAttribute("tasks", tasks);
    response.sendRedirect("planner.jsp");
%>


 