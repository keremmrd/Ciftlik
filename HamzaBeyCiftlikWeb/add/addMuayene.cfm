<cfparam name="form.HayvanID" default="">
<cfparam name="form.MuayeneTarihi" default="">
<cfparam name="form.YapilanIslemler" default="">
<cfparam name="form.MuayeneNotlari" default="">

<cfset HayvanID = form.HayvanID>
<cfset MuayeneTarihi = form.MuayeneTarihi>
<cfset YapilanIslemler = form.YapilanIslemler>
<cfset MuayeneNotlari = form.MuayeneNotlari>

<cfquery name="MuayeneTakip" datasource="Ciftlik2" password="1596">
    INSERT INTO Muayeneler (HayvanID, MuayeneTarihi, YapilanIslemler, MuayeneNotlari)
    VALUES (
        <cfqueryparam value="#HayvanID#" cfsqltype="CF_SQL_INTEGER">,
        <cfqueryparam value="#MuayeneTarihi#" cfsqltype="CF_SQL_DATE">,
        <cfqueryparam value="#YapilanIslemler#" cfsqltype="CF_SQL_VARCHAR">,
        <cfqueryparam value="#MuayeneNotlari#" cfsqltype="CF_SQL_VARCHAR">
    )
</cfquery>

<cflocation url="/muayeneTakip.cfm" addtoken="false">
