<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <title>Task 12</title>
    </head>
    <body>
    <section>
    <div class="main_container">
    <div class="forms card">
    <h3>Task 12 - Query Data</h3>
    <hr>
    <form name="cftask_12" action="" method="post">
    <div class="form-group">
    <div class="form-control">
    <label>Row Number</label>
    <input type="text" name="row_no" required placeholder="Number Between 1 and 10" autocomplete="off">
    </div>
    </div>
    <div class="form-btn-control">
    <input type="submit" class="common-btn" name="submit" value="Submit" />
    </div>
    </form>
    </div>
    </div>
    </section>
    </body>
    </html>
    <cfparam name='Message' default="value">
     <cfif structKeyExists(url, "Message" )>                
     <cfif url.Message eq 1>
     <div class="alert alert-success col-lg-6 offset-lg-3" role="alert">                    
     <cfoutput> Please enter Number between 1 and 10</cfoutput>
     </div>
    </cfif>
    </cfif>
    <cfinvoke component="components.task1" method="retrieveCustomers" returnvariable="allCustomers"></cfinvoke>
    <div class="resbox">
    <h3>User list</h3>
    <hr>
    <div class="row">
    <div class="col-md-4">
    <table width="50%" border="1" cellspacing="0" cellpadding="3">
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
    <cfset r_num=form.row_no>           
    <cfset data=createObject("component","components.task1")>
    <cfset struct_data=data.displayFunc(r_num)>
    <div class="res1">
    <cfdump var="#struct_data#">
    </div>
    </cfif>