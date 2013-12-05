<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts 2 Login Application</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
      $("#tip").tooltip();
    </script>
</head>
<body>
<s:actionerror/>

<div class="container">
<div class="row">
   <div class="span4">
     <div class="well">
       <s:form action="login.action" method="post">
       <fieldset>
       <legend>Struts2 Login</legend>
         <s:textfield name="username" cssClass="input-block-level" required="required" placeholder="username" />
         <s:password name="password" cssClass="input-block-level" required="required" placeholder="password" />
         <div class="pull-right">
         <s:submit key="label.login" cssClass="btn btn-primary" method="execute"  />
         </div>
       </fieldset>
     </s:form>
   </div>
  </div>
</div>
<div class="row">
 <div class="span4">
   <a href="#login" class="btn btn-info" role="button" data-toggle="modal" >Bootstrap login</a>
  </div>
</div>
</div>



<div id="login" class="modal hide fade" area-hidden="true" >
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" area-hidden="true" >x</button>
    <h3>Login</h3>
  </div>
  <div class="modal-body">
  <form action="login.action" method="post">
  <div class="controls control-group">
   <input type="text" class="span5" name="username" placeholder="username"/>
   <input type="password" class="span5" name="password" placeholder="password" />
   </div>
   
   <p class="help-block"> Please check
     <a href="#" id="tip" rel="tooltip" data-animation="true" data-original-title="Cool tip" 
     data-placement="right">Help</a>
   </p>
   
   <label class="checkbox inline">
    <input type="checkbox" >Remember Me
   </label>
  </form>
  </div>
  <div class="modal-footer">
    <input type="submit" value="Submit" class="btn btn-success">
    <input type="reset" class="btn btn-danger" data-dismiss="modal" area-hidden="true">
  </div>
</div>
</body>
</html>