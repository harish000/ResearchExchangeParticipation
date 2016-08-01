<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
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
<%-- Code to Display Question--%>
<section class="question_section">
    <h3><span class="label label-default" >Question</span></h3>
    <%-- Img tag to display image--%>
    <img src="images/small_tree.jpg" class="img-responsive" height="250" width="250" alt="Tree"/>

<%--Code to rating the Question --%>
    <p class="text-left">${study.question}</p>

        <form action="StudyController?action=answer&StudyCode=${study.studyCode}" method="post">
            <c:forEach items="${study.answer}" var="ans">
                <div class="radio">
                    <input type="radio" name="number" value="${ans}" required> ${ans}
                </div>
            </c:forEach>
        <!--<div class="radio">
            <input type="radio" name="number" value="three" required>3
            </div>
<div class="radio">
            <input type="radio" name="number" value="four">4
            </div>
            <div class="radio">
            <input type="radio" name="number" value="five">5
            </div>  -->
    
<%-- Code to submit the Rating  --%>
    
         <div class="form-group">
        <div class="col-sm-offset-3 col-sm-4">
        <button type="submit"  class="btn btn-primary">Submit</button>
         </div>
            </div>
            <br/><br/><br/>   
        </form>
        
    
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>