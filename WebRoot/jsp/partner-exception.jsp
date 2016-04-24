<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="common/exception-templates.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/exception.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	partnerGrid = $("#allpartnerexception").datagrid({
		source : 'partnerException_load.do',
		template : 'all-partner-exceptions-template',
		pagination : true
	});
});
toggleLeftNavigationMenus('partnerexception');
</script>

<div class="subHeading">
	<h1>View/Edit Partner Exceptions</h1>
</div>

<h3 class="head1 addE1" style="display: none;">Add Partner Exception</h3>
<div class="clear"></div>

<div class="clear"></div>

<form id="partnerException" name="partnerException" method="POST"></form>
