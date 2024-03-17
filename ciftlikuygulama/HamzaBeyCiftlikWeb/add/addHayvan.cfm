<cfparam name="form.Tur" default="">
<cfparam name="form.Yas" default="">
<cfparam name="form.SaglikDurumu" default="">

<cfset Tur = form.Tur>
<cfset Yas = form.Yas>
<cfset SaglikDurumu = form.SaglikDurumu>

<cfquery name="HayvanKayit" datasource="Ciftlik2" password="1596">
    INSERT INTO Hayvanlar (Tur, Yas, SaglikDurumu)
    VALUES (
        <cfqueryparam value="#Tur#" cfsqltype="CF_SQL_VARCHAR">,
        <cfqueryparam value="#Yas#" cfsqltype="CF_SQL_INTEGER">,
        <cfqueryparam value="#SaglikDurumu#" cfsqltype="CF_SQL_VARCHAR">
    )
</cfquery>

<cflocation url="/hayvanKayit.cfm" addtoken="false">
