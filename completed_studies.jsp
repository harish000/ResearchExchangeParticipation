
<%@ include file="header.jsp" %>
<section>
    	<meta property="og:url"           content="${pageContext.request.contextPath}" />
	<meta property="og:type"          content="Study Website" />
	<meta property="og:title"         content="${study.studyName}" />
<div class="table-responsive">
    <table class="table" >
        <tr>
            <th>Study Name</th>
            <th>Requested Participants</th>     
            <th>Participations</th>
        </tr>
          <tr>
              <td><c:out value="${study.studyName}"/></td>
              <td><c:out value="${study.requestedParticipants}"/></td>
              <td><c:out value="${study.numOfParticipants}"/></td>
          </tr>
    </table>
</div>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>