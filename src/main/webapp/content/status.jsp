<jsp:useBean id="msalAuth" scope="session" class="com.microsoft.azuresamples.msal4j.helpers.IdentityContextData" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card">
    <h5 class="card-header bg-primary">
        <% out.println(msalAuth.getAuthenticated()? "You're signed in!" : "You're not signed in."); %>
    </h5>
    <div class="card-body">
        <p class="card-text">
            <% if (msalAuth.getAuthenticated()) { %>
                Click here to get your <a class="btn btn-success" href="<c:url value="/token_details"></c:url>">ID Token Details</a>
                or see your <a class="btn btn-success" href="<c:url value="/groups"></c:url>">Groups</a>
                or go to the <a class="btn btn-success" href="<c:url value="/admin_only"></c:url>">Admins Only</a> page
                or go to the <a class="btn btn-success" href="<c:url value="/regular_user"></c:url>">Regular Users</a> page
            <% } else { %>
                Use the button on the top right to sign in.
                Attempts to visit <a href="<c:url value="/token_details"></c:url>">ID Token Details</a>,
                <a href="<c:url value="/groups"></c:url>">Groups</a>,
                <a href="<c:url value="/admin_only"></c:url>">Admins Only</a>, 
                or <a href="<c:url value="/regular_user"></c:url>">Regular Users</a>
                will result in a 401 error.
            <% } %>
        </p>
    </div>
</div>
