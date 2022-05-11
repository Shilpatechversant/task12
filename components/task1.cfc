<cfcomponent displayname="task1" hint="ColdFusion Component for Customers" >
      <!--- This function retrieves all customers from the database --->
      <cffunction name="retrieveCustomers" hint="Gets all customer from the database" returntype="query" access="remote">
            <cfquery name="getCustomers" datasource="newtech">
	            select * from sakila.test_user
            </cfquery>
            <cfreturn getCustomers>
      </cffunction>

     <cffunction  name="displayFunc" access="public" output="true">
            <cfargument  name="r_num" type="string" required="true">
            <cfif arguments.r_num GT 10 || arguments.r_num LT 1>
                  <cflocation  url="./index.cfm?message=1">
                  <cfabort>
            </cfif>
            <cfquery name="getrow" datasource="newtech"> select * from sakila.test_user </cfquery>
            <cfset local.start=QueryGetRow(getrow, r_num)>
            <cfreturn local.start>
      </cffunction>
</cfcomponent>