<%--
        Document: aboutl.jsp
        Created On: Feb 4, 2016
        Authors: Deepak Rohan, Abhishek

--%>

<%@page import="project.business.Study"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.ArrayList"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<nav id="menu">
    <ul>
        <li>Coins (<span class="count">${theUser.numCoins}</span>) </li>
        <li>Participants (<span class="count">${theUser.numPostedStudies}</span>) </li>
        <li>Participation (<span class="count">${theUser.numParticipation}</span>) </li>
        <li><br></li>
        <li><a href="UserController?action=home">Home</a></li>
        <li><a href="StudyController?action=participate">Participate</a></li>
        <li><a href="StudyController?action=studies">My Studies</a></li>
        <li><a href="recommend.jsp?user=Hello,Kim">Recommend</a></li>
        <li><a href="contact.jsp?user=Hello,Kim">Contact</a></li>
    </ul>

</nav>
<%-- Section to display studies and participate in that study--%>
<div>

    <h3 class="text-left"><span class="label label-default " >Studies</span>
        <span ><a class="label label-default" href="StudyController?action=report">Report History</a></span></h3>
</div>

<%-- Display the studies in the table --%>
<%-- Clicking on Participate button displays Question.jsp page where 
        you can rate the question--%>
<div class="table-responsive">
    <table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Study Name</th>
            <th>Image</th>      
            <th>Question</th>
            <th>Action</th>
            <th>Report</th>
        </tr>
        <%! String filepath;
            String filename;
            File file;%>
        <c:forEach items="${studies}" var="study">
            <tr>
                <td>${study.studyName}</td>

                <%  filepath = getServletContext().getRealPath("/");
                    System.out.println(filepath);
//                    System.out.println("Context path "+ getServletContext().getContextPath());
//                    System.out.println("Servlet COnfig path "+ getServletConfig().getServletName());
//                    System.out.println("virtual server name"+ getServletContext().getVirtualServerName());
//                    System.out.println(filepath + "images");
                    InputStream is = ((Study) pageContext.getAttribute("study")).getImageURL();
                    System.out.println(is);
                    filename = "displayPic" + ((int) (Math.random() * 1000)) + ".jpg";
                    file = new File(System.getenv("OPENSHIFT_DATA_DIR") + filename);
//                  file = new File(System.getenv("OPENSHIFT_DATA_DIR")+filename);
                    file.createNewFile();
                    OutputStream outputStream = new FileOutputStream(file);
                    int bytesRead = -1;
                    byte[] buffer = new byte[16177215];
//                16177215 because that is the maximum file size of the image getting inserted in DB. 
                    while ((bytesRead = is.read(buffer)) != -1) {
                        outputStream.write(buffer, 0, bytesRead);
                    }%>

                <td><img src=<%="images/" + filename%> width="50px" height="50px" alt="Tree"></td>    
<!--            <td><img src=<%=System.getenv("OPENSHIFT_DATA_DIR") + filename%> width="50px" height="50px" alt="Tree"></td>-->
                <%  System.out.println(file.getTotalSpace());
                    //file.delete();
                    is.close();
                    outputStream.flush();
                    outputStream.close();
                    System.out.println("File saved");

//                        if (file.getAbsoluteFile().delete()) {
//                            System.out.println(file.getName() + " is deleted!");
//                        } else {
//                            System.out.println("Delete operation is failed.");
//                        };
                       %>

                <td>${study.question}</td>
                <td><form action="StudyController?action=participate&StudyCode=${study.studyCode}" method="post"><input type="submit" class="participate_button"
                                                                                                                        value="Participate" /></form></td>
                <td><form action="StudyController?action=report&StudyCode=${study.studyCode}" method="post"><input type="submit" class="participate_button"
                                                                                                                   value="Report" /></form></td>
            </tr>
        </c:forEach>
    </table>
</div>


<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>