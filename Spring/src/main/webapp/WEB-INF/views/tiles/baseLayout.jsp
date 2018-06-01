<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style=" width:1400px;;border: 1px solid #cccccc"><tiles:insertAttribute name="header"/></div>  
<div style="float: left; width: 200px; height:800px; border: 1px solid #cccccc"><tiles:insertAttribute name="left"/></div>  
<div style="float: left; width:1140px;height:800px;text-align:center; padding:30px; border: 1px solid #cccccc"><tiles:insertAttribute name="body"/></div>
<div style="clear: both; width: 1400px;;border: 1px solid #cccccc"><tiles:insertAttribute name="footer"/>  </div>

