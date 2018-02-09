<%@ page import="by.odnairy.trackmoney.entities.Operation" %>
<%--
  Created by IntelliJ IDEA.
  User: odnairy
  Date: 5/19/12
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="template.jsp"/>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>-->
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link rel="stylesheet" href="resources/css/datepicker.css" type="text/css"/>
<link rel="stylesheet" media="screen" type="text/css" href="resources/css/layout.css"/>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/datepicker.js"></script>
<script type="text/javascript" src="resources/js/eye.js"></script>
<script type="text/javascript" src="resources/js/utils.js"></script>
<script type="text/javascript" src="resources/js/layout.js"></script>

<html>
<head>
    <title><spring:message code="label.title.dashboard"/></title>
</head>
<body>

<%--<div id="centerLeft">--%>
<%--<input class="inputDate" id="inputDate" value="">--%>
<%--</div>--%>
<div id="container">
    <div id="inner">

        <div id="centerLeft">
            <h1 style="text-align: left;">Categories</h1>


            <c:if test="${!empty categories}">
                <table class="data">
                    <tr class="headerRow">
                        <th class="IdHeaderCell">Id</th>
                        <th>Title</th>

                    </tr>
                    <c:forEach items="${categories}" var="category">
                        <tr>
                            <td class="idCell">${category.categoryId}</td>
                            <td class="mainCell">${category.title}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>


            <h1 style="text-align: left; ">Addresses</h1>

            <p><c:if test="${!empty addresses}">
            <table class="data" style="">
                <tr class="headerRow">
                    <th class="IdHeaderCell">Id</th>
                    <th>Name</th>

                </tr>
                <c:forEach items="${addresses}" var="address">
                    <tr>
                        <td class="idCell"> ${address.addresseeId}</td>
                        <td class="mainCell">${address.addresseeName}</td>
                    </tr>
                </c:forEach>
            </table>
            </c:if>
            </p>
        </div>

        <div id="centerRight" style="font-size: 12pt;">
            <c:if test="${!empty operationsList}">
                <table class="data">
                    <tr class="operationsHeader">
                        <th><spring:message code="label.operations.number"/></th>
                        <th><spring:message code="label.operations.summ"/></th>
                        <th><spring:message code="label.operations.comment"/></th>
                        <th>&nbsp;</th>
                    </tr>

                    <c:forEach items="${operationsList}" var="operation">
                        <tr>
                            <td class="operationIdCell" style="width: 30px;">${operation.operationId}</td>
                            <td style="width:100px;"
                                    <% Operation oper = (Operation) pageContext.getAttribute("operation");
                                        if (oper.getAmount() > 0) {
                                            out.print("class=\"profit\"");
                                        } else {
                                            out.print("class=\"charges\"");
                                            oper.setAmount(oper.getAmount() * -1);
                                        }
                                    %>
                                    >${operation.amount}</td>
                            <td class="commentCell">${operation.comment}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <div>
                <p>
            <div >Income â:  <div class="profit">${incomeSumm}</div></div>
                    <div >Charges â: <div class="charges">${chargesSumm}</div></div>
                </p>
            </div>
        </div>

    </div>
</div>

</body>
</html>