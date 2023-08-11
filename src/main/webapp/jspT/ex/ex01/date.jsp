<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
	
	String dateString = formatter.format(now);
%>

	<h3><%= dateString %></h3>