<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display Page Name --%>
<h3 id="page_name">My Studies</h3>
 <%-- Code to add new study   --%>
<h3 id="add_new_study"><a href="newstudy.jsp?user=Hello,Kim" >Add a new study</a></h3>
 <%-- Code to go Back to the Main Page  --%>
<a href="main.jsp?user=Hello,Kim" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section to display studies details --%> 
<%-- Clicking on Start, Stop to Participate in that study and  Edit button to display edit page and edit study details in it--%>
<section>
        <div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>

<div class="table-responsive">
    <table class="table" >
        <tr>
            <th>Study Name</th>
            <th>Requested Participants</th>     
            <th>Participations</th>
            <th>Status</th>
            <th>Action</th>
            <th></th>
        </tr>
        <c:forEach items="${studies}" var="current">
            <tr>
                <td><c:out value="${current.studyName}"/></td>
                <td><c:out value="${current.requestedParticipants}"/></td>
                <td><c:out value="${current.numOfParticipants}"/></td>
                <td><form action="StudyController?action=<c:if test="${current.status eq 'start'}">stop</c:if><c:if test="${current.status eq 'stop'}">start</c:if>&AMP;StudyCode=${current.studyCode}" method="post">
                        <button type="submit" class="btn btn-primary">
                            <c:if test="${current.status eq 'start'}">stop</c:if> 
                            <c:if test="${current.status eq 'stop'}">start</c:if>
                        </button>
                    </form>
                </td>
                <td><form action="StudyController?action=edit&StudyCode=${current.studyCode}" method="post">
                        <button type="submit" class="btn btn-primary">Edit</button>
                    </form>
                </td>
                <td>
  <div class="fb-share-button" data-href="${pageContext.request.contextPath}/StudyController?action=completedStudy&StudyCode=${current.studyCode}" data-layout="button_count">

                        Share on FB
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>