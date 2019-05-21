<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>仓储管理系统首页</title>
  </head>
  
  <body>
    <h1>仓储管理系统</h1>
    <hr/>
    <a href="toAdd.action">
    <button style="background-color:#173e65;color:#ffffff;width:70px;">添加</button>
    </a>
  	<c:if test="${productList!=null}">
	  <table style="margin-top: 10px;width:700px;text-align:center;" border=1>  
	    <tr>  
	      <td>序号</td><td>货物名称</td><td>价格</td><td>货物描述</td>
	      <td>重量</td><td>型号规格</td><td>操作</td>
	   </tr>  
      	 <c:forEach items="${productList}" var="item" varStatus="status">  
		     <tr>  
		       <td>${status.index+1}</td><td>${item.name }</td>
		       <td>${item.price}</td><td>${item.desc }</td>  
		       <td>${item.weight}</td><td>${item.model}</td>
		       <td>
		       		<a href="toEdit.action?id=${item.id}">编辑</a>|
		       		<a href="delete.action?id=${item.id}">删除</a>
		       </td>
		     </tr>  
	     </c:forEach>  
	    </table> 
   </c:if>
   <c:if test="${productList==null}">
       <b>搜索结果为空！</b>
   </c:if>
  </body>
</html>
