<cfparam name="form.HayvanID" default="">
<cfparam name="form.UretimTarihi" default="">
<cfparam name="form.UretimMiktari" default="">

<cfset HayvanID = form.HayvanID>
<cfset UretimTarihi = form.UretimTarihi>
<cfset UretimMiktari = form.UretimMiktari>

<cfquery name="SutUretimTakip" datasource="Ciftlik2" password="1596">
    INSERT INTO SutUretimi (HayvanID, UretimTarihi, UretimMiktari)
    VALUES (
        <cfqueryparam value="#HayvanID#" cfsqltype="CF_SQL_INTEGER">,
        <cfqueryparam value="#UretimTarihi#" cfsqltype="CF_SQL_DATE">,
        <cfqueryparam value="#UretimMiktari#" cfsqltype="CF_SQL_FLOAT">
    )
</cfquery>

<cflocation url="/sutUretimTakip.cfm" addtoken="false">
