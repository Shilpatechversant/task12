<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <title>Task 1</title>
    </head>
    <body style="background-color:#d7b2d7;">
        <section>
            <div class="main_container">
                <div class = "forms card">
                    <h3>Task 11 - Query Data</h3>
                    <hr>
                 <cfform name="cftask_5" action="">
                      <div class="form-group">
                        <div class="form-control">                     
                        <label>Row Number</label>
                            <input type="text" name="row_no" 
                            required placeholder="Number Between 1 and 10" autocomplete="off">
                        </div>
                        </div>               
                
                        <div class="form-btn-control">
                            <input type="submit" class="common-btn" name="submit" 
                            value="Submit"/>
                        </div>
                    </cfform>
                </div>
            </div>
        </section>
    </body>
</html>

<cfinvoke component="components.task1"
	method="retrieveCustomers"
	returnvariable="allCustomers"></cfinvoke> 
    <div class="resbox">
    <h3>User list</h3>  <hr>
  <div class = "row">
  <div class ="col-md-4">
  <table width="50%"  border="1" cellspacing="0" cellpadding="3">
 <tr>
   <td>First Name</td>
   <td>Last Name</td>
 </tr>
<cfoutput query="allCustomers">
 <tr>
   <td>#first_name#</td>
   <td>#last_name#</td>
 </tr>
</cfoutput>
</table> 
</div>
</div>
</div>

 <cfif structKeyExists(form,'Submit')>
 <cfset r_num = #form.row_no#>

   <cfquery name="getrow" datasource="newtech">
	 select * from sakila.test_user
   </cfquery>

   <cfset  start = QueryGetRow(getrow, r_num)>
   <div class="res1">
    <cfoutput>
    <cfdump var=#start#>
       <br>
    </cfoutput>
 </div>
    
 </cfif>


