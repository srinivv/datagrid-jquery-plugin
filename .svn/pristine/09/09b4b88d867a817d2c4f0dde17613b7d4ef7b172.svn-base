<script type="text/template" id="all-partner-exceptions-template">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="countryListing" id="pertnerList">
	<tbody>
		<tr>
			<th><label class="label_check"><input type="checkbox" class="selectAllPartner" /></label></th>
			<th width="90">PGTMV BE ID</th>
			<th width="150">Node Name</th>
			<th width="200">Partner Name</th>
			<th width="320">Exception Description</th>
			<th width="100">Start Date</th>
			<th width="100">End Date</th>
			<th class="relative" width="40"></th>
		</tr>
	
	<@ _.each(data, function(exception) { @>
		<tr>
			<td><label class="label_check"><input type="checkbox" name ="partnerSelector" class="partnerSelector" value="<@= exception.nodeId @>" data-pdbid="<@= exception.pdbGeoId @>" /></label></td>
			<td><@= exception.pgtmvBeId @><br clear="left"/>
			<@ switch(exception.exceptionstatus)  {
			case "ACTIVE": @>
			<span class="activeStatus">active</span>
			<@  break; @>
			<@ case "INACTIVE": @>
			<span class="inactive">inactive</span>
			<@  break; @>
			<@ case "PENDING": @>
			<span class="pending">pending</span>
			<@  break; @>
			<@ } @></td>
			<td><strong class="nodeName"><@= exception.nodeName @></strong></td>
			<td><@= exception.partnerName @></td>
			<td><@= exception.partnerDescription @></td>
			<td><@= exception.partnerStartDate @> <br /> <span class="createdBy">by <@= exception.createdBy @></span></td>
			<@ if(exception.partnerEndDate !=undefined){ @>
				<td><@= exception.partnerEndDate @> <br /> <span class="createdBy">by <@= exception.updatedBy @></span></td>
			<@ } else { @>
				<td>No End Date <br /> <span class="createdBy">by <@= exception.updatedBy @></span></td>
			<@ } @>	
			<td>
				<div class="posRel">
					<div class="delRow">
						<a title="Edit" href="javascript:editPartnerException(<@= exception.pdbGeoId @>,<@= exception.nodeId @>)" class="delicon">
						 <img src="images/edit-icon.png" align="delete" >
						</a>
						<a title="Delete" href="javascript:deletePartnerException(<@= exception.pdbGeoId @>,<@= exception.nodeId @>)" class="delicon">
						 <img src="images/delRow.png" align="delete" >
						</a>
					</div>
				</div>
			</td>
		</tr>
	<@ }); @>
	</tbody>
</table>
<div class="optionsArea">
	<a id="deleteAllPExceptions" class="tooltip disableButton" title="Delete All"><img src="images/dleteAll.jpg" /></a>
</div>
</script>

<script type="text/template" id="all-deal-exceptions-template">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="countryListing" id="pertnerList">
	<tbody>
		<tr>
			<th><label class="label_check"><input type="checkbox" class="selectAllDeal"/></label></th>
			<th width="120" align="left">Deal ID</th>
			<th width="250" align="left">Node Name</th>
			<th width="250" align="left">Exception Description</th>
			<th width="100" align="left">Start Date</th>
			<th width="100" align="left">End Date</th>
			<th class="relative" width="40"></th>
		</tr>
		<@ _.each(data, function(exception) { @>	
		<tr>
			<td><label class="label_check"><input type="checkbox" name="dealSelector" class="dealSelector" value="<@= exception.nodeId @>" data-dealid="<@= exception.dealId @>"  /></label></td>
			<td><@= exception.dealId @><br clear="left"/>
				<@ switch(exception.exceptionstatus)  {
			case "ACTIVE": @>
			<span class="activeStatus">active</span>
			<@  break; @>
			<@ case "INACTIVE": @>
			<span class="inactive">inactive</span>
			<@  break; @>
			<@ case "PENDING": @>
			<span class="pending">pending</span>
			<@  break; @>
			<@ } @>
			</td>
			<td><strong class="nodeName"><@= exception.nodeName @></strong></td>
			<td><@= exception.exceptionDescription @></td>
			<td><@= exception.dealStartDate @> <br /> <span class="createdBy">by <@= exception.createdBy @></span></td>	
			<@ if(exception.dealEndDate !=undefined){ @>
				<td><@= exception.dealEndDate @> <br /> <span class="createdBy">by <@= exception.updatedBy @></span></td>
			<@ } else { @>
				<td>No End Date <br /> <span class="createdBy">by <@= exception.updatedBy @></span></td>
			<@ } @>	
			
			<td>
				<div class="posRel">
					<div class="delRow">
				        <a title="Edit" href="javascript:editDealException(<@= exception.dealId @>, <@= exception.nodeId @>)" class="delicon">
					        <img src="images/edit-icon.png" align="delete" >
				        </a>
						<a title="Delete" href="javascript:deleteDealException(<@= exception.dealId @>, <@= exception.nodeId @>)" class="delicon"> 
							<img align="delete" src="images/delRow.png">
						</a>
					</div>
				</div>
			</td>
		</tr>
		<@ }); @>
	</tbody>
</table>
<div class="optionsArea">
	<a id="deleteAllDExceptions" class="tooltip disableButton" title="Delete All"><img src="images/dleteAll.jpg" /></a>
</div>
</script>

<script type="text/template" id="create-exception-search-results-template">
<div class="searchRulesArea">
<h3 class="head1">Search Results</h3>
			<p class="head1text">
<@ if(total == 0){ @>				
	There is no result to match your criteria
<@ } else if (total == 1) { @>
	There is one result to match your criteria
<@ } else { @>
	There are <@=total @> results to match your criteria
<@ } @>	
			<@ if(total > 0){ @>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="countryListing">
				<tr>
					<th width="30"><label class="label_check"><input type="checkbox" class="checkall"/></label></th>
					<th width="250">Node Name</th>
					<th width="140">Created Date</th>
					<th width="120">Updated Date</th>
					<th class="relative" width="40"></th>
				</tr>
			</table>
			
			<form name="searchExceptionForm" action="" method="POST">
				<div class="tableList">
					<ul>
						<@ _.each(data, function(node) { @>
						<li>
							<table width="100%" border="0" cellspacing="0" cellpadding="0" class="countryListing">   
								<tr class="deleteTR">
									<td width="30"><label class="label_check"><input data-id="<@= node.id@>" data-name="<@= node.name @>" name="partnerSearch" type="checkbox" class="mycheckbox" /></label></td>
									<td width="250"><strong class="nodeName"><@= node.name @></strong><br clear="left"/><span class="activeStatus">active</span><br clear="left"/></td>
		        					<td width="140"><@= node.createdOn @> <br/> <span class="createdBy"><@= node.createdBy @></span></td>
									<td width="120"><@= node.updatedOn @> <br/> <span class="createdBy"><@= node.updatedBy @></span></td>
								</tr> 
							</table>
						</li>
						<@ }); @>
					</ul>

				</div>
				
			</form>
				<@ } @>
				
</div>
	

</script>



