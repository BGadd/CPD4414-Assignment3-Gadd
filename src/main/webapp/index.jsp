<%-- 
    Document   : index
    Created on : 4-Feb-2016, 8:37:54 AM
    Author     : c0641903
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="assignment3.Assignment3"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CPD-4414 Assignment 3</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-2.2.0.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="col-md-12">Results</h1>
            <div class="col-md-8 col-md-offset-2">
                <%  String strId = request.getParameter("id");
                    if (strId != null && !strId.isEmpty()) {
                        try {
                            int id = Integer.parseInt(strId);
                            out.print(Assignment3.getJSON(id));
                        } catch (NumberFormatException ex) {
                            out.print("Error with ID. " + strId + " is not a number.");
                        }
                    } else {
                        out.print(Assignment3.getJSON());
                    }
                %>
            </div>
            <div class="form-group col-md-12"><a class="btn btn-primary" href="/index.jsp">Reload</a></div>
            <form method="GET" class="form col-md-12" action="#">
                <div class="form-group">
                    <label>
                        Query By ID: <input class="form-control" type="text" name="id" />
                    </label>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-default" />
                </div>
            </form>                
        </div>
    </body>
</html>