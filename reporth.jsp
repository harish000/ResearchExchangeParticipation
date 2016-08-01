<%-- 
    Document   : reporth
    Created on : Feb 5, 2016, 5:20:55 PM
    Author     : Abhishek Banerjee
--%>
<%@page import="project.business.Reported"%>
<%@page import="project.business.Study"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to go back to Main page  --%>
<br>
<a href="main.jsp?user=Hello,Kim" id="back_to_page">&laquo;Back to the Main Page</a>
<br>
 <div class="table-responsive">
<table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Report Date</th>
            <th>Report Question</th>		
            <th>Report Status</th>
            
        </tr>
        <%
            ArrayList<Reported> reports = (ArrayList<Reported>) request.getAttribute("reports");
            int index=0;
            int i;
            
            while(index<reports.size()) {
        %>
        <tr>
            <%
                //index++;
//                i=index;
//                while(index<i+3) {
            %>
            <td>
                <% out.print(reports.get(index).getDateCreated());%>
            </td>
            <td>
                <% out.print(reports.get(index).getQuestion());%>
            </td>
            <td>
                <% out.print(reports.get(index).getStatus());%>
            </td>
            <% //}
                index=index+1; %>
        </tr>
        <%
            }
        %>
    </table>
    </div>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>