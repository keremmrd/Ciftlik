<cfparam name="form.HayvanID" default="">
<cfparam name="form.OlumTarihi" default="">
<cfparam name="form.OlumNedeni" default="">

<cfset HayvanID = form.HayvanID>
<cfset OlumTarihi = form.OlumTarihi>
<cfset OlumNedeni = form.OlumNedeni>

<cfquery name="HayvanOlumKayit" datasource="Ciftlik2" password="1596">
    INSERT INTO OlumKaydi (HayvanID, OlumTarihi, OlumNedeni)
    VALUES (
        <cfqueryparam value="#HayvanID#" cfsqltype="CF_SQL_INTEGER">,
        <cfqueryparam value="#OlumTarihi#" cfsqltype="CF_SQL_DATE">,
        <cfqueryparam value="#OlumNedeni#" cfsqltype="CF_SQL_VARCHAR">
    )
</cfquery>

<cflocation url="/hayvanOlumTakip.cfm" addtoken="false">
