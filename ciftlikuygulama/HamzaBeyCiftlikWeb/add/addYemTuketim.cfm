<cfparam name="form.HayvanID" default="">
<cfparam name="form.YemMiktarıKG" default="">
<cfparam name="form.YemTuru" default="">
<cfparam name="form.TuketimTarihi" default="">

<cfset HayvanID = form.HayvanID>
<cfset YemMiktarıKG = form.YemMiktarıKG>
<cfset YemTuru = form.YemTuru>
<cfset TuketimTarihi = form.TuketimTarihi>

<cfquery name="YemTuketimTakip" datasource="Ciftlik2" password="1596">
    INSERT INTO YemTuketimi (HayvanID, YemMiktarıKG, YemTuru, TuketimTarihi)
    VALUES (
        <cfqueryparam value="#HayvanID#" cfsqltype="CF_SQL_INTEGER">,
        <cfqueryparam value="#YemMiktarıKG#" cfsqltype="CF_SQL_FLOAT">,
        <cfqueryparam value="#YemTuru#" cfsqltype="CF_SQL_VARCHAR">,
        <cfqueryparam value="#TuketimTarihi#" cfsqltype="CF_SQL_DATE">
    )
</cfquery>

<cflocation url="/yemTuketimTakip.cfm" addtoken="false">
