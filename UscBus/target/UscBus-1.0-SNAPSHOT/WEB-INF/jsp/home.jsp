<%-- 
    Document   : home
    Created on : 08 10, 17, 5:51:57 PM
    Author     : rcastillon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin-left: 25px; margin-right: 25px;">
        <h1>${welcome}</h1>
           <br>
         <button   class="submit btn-lg btn-primary btn-block btn-signin " type="submit">Request To Ride</button>
         <button  class="submit btn-lg btn-primary btn-block btn-signin" type="submit">Show Map</button>
         <button class="submit btn-lg btn-primary btn-block btn-signin" type="submit">Logout</button>
         <br>
         <form action ="index" method="POST">
    <button  class="submit btn-lg btn-danger btn-block btn-signin" type="submit"> << Back</button>
        </form>
         <br>
          <form action ="connection" value="connection">
    <button  class="submit btn-lg btn-info btn-block btn-signin" type="submit"> << Database Status</button>
        </form>
         <br>
         
    </body>
</html>
