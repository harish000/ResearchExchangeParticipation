<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
<%@page import="java.util.List"%>
<%@page import="project.business.Reported"%>
<%@page import="java.util.ArrayList"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to go back to Main page  --%>
<br>
<h3><span id="studies">Reported Questions</span></h3><br/>
<a href="admin.jsp?user=Hello,Admin" id="back_to_page">&laquo;Back to the Main Page</a><br/>
<br/><br/><br/>


<!-- TODO: Add more code to get the table here.
  -->
  <div class="table-responsive">
  <table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Question</th>
            <th>Action</th>		
        </tr>
            <%-- First study details --%>
            <%
                ArrayList<Reported> reports = (ArrayList<Reported>) request.getAttribute("reports");
                int len = reports.size();
                String question="";
                String code = "";
                String status="";
                for(int i=0; i<len; i++) {
                    code = reports.get(i).getStudyCode();
                    question=reports.get(i).getQuestion();
                    status=reports.get(i).getStatus();
                    //if(status.equals("Pending")) {
            %>
            <tr>
                <td>
                    <% out.print(question); %>
                <%--    <% out.print(status); %>--%>
                </td>
                <td>
                    <form action="StudyController" method="post">
                        <input type="submit" class="btn btn-primary" value="Approve" formaction="StudyController?action=approve&StudyCode=<%=code%>"/>
                        <input type="submit" class="btn btn-primary" value="Dispprove" formaction="StudyController?action=disapprove&StudyCode=<%=code %>"/>
                    </form>
                </td>
            </tr>
                <% //}
            }%>
        </table>
        </div>
  
  
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>