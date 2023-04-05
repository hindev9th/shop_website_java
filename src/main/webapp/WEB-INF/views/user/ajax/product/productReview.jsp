<%--
  Created by IntelliJ IDEA.
  User: hien
  Date: 3/4/2023
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<c:forEach var="item" items="${productReview}">
    <li>
        <div class="single-comment">
            <div class="comment-avatar">
                <img src="<c:url value="/assets/user/images/avt/${item.image}" />" alt="comment image bege">
            </div>
            <div class="comment-info">
                <div class="product-rattings">
                    <c:forEach begin="1" var="i" end="5">
                        <c:if test="${i <= item.rate}">
                            <span><i class="fa fa-star"></i></span>
                        </c:if>
                        <c:if test="${i > item.rate}">
                            <span><i class="fa fa-star-o"></i></span>
                        </c:if>
                    </c:forEach>
                </div>
                <span class="date"><strong>${item.name}</strong> ${item.createAt}</span>
                <p>${item.content}</p>
            </div>
        </div>
    </li>
</c:forEach>
