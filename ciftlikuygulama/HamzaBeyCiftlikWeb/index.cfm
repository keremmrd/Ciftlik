<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>

    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.cfm">
            Ana Sayfa
          </a>
          <a class="navbar-brand" href="hayvanKayit.cfm">
            Hayvan Kayıt 
          </a>
          <a class="navbar-brand" href="hayvanOlumTakip.cfm">
            Hayvan Ölüm Takibi
          </a>
          <a class="navbar-brand" href="muayeneTakip.cfm">
            Muayene Takibi
          </a>
          <a class="navbar-brand" href="sutUretimTakip.cfm">
            Süt Üretimi 
          </a>
          <a class="navbar-brand" href="yemTuketimTakip.cfm">
            Yem Tüketimi
          </a>
          <a class="navbar-brand" href="veriAktar.cfm">
            Excelden Veri Aktarma
          </a>
        </div>
      </nav>



      <div class="p-1 m-1"> 
        <h3>Ana Sayfa</h3>
    </div>
      <cfquery name="Hayvanlar" datasource="Ciftlik2" password="1596">
        SELECT * FROM Hayvanlar
    </cfquery>

<div class="container p-3 my-3 col-md-3 h-100">
    <span>
        <table widht="99%">
            <td align="left" height="40"><h4>Hayvan Listesi</h4></td>
    </table>
    <table class="table table-bordered table-sm small" border="1" bordercolor="#99999" width="99%" align="center">
        <tr>
            <td><b>No</b></td>
            <td><b>Hayvan Türü</b></td>
            <td><b>Hayvan Yaşı</b></td>
            <td><b>Sağlık Durumu</b></td>
        </tr>
        <cfoutput query="Hayvanlar">
            <tr>
                <td>#HayvanID#</td>
                <td>#Tur#</td>
                <td>#Yas#</td>
                <td>#SaglikDurumu#</td> 
            </tr>
        </cfoutput>
    </table>
    </span>
</div>

<cfquery name="Muayeneler" datasource="Ciftlik2" password="1596">
    SELECT * FROM Muayeneler
</cfquery>

<div class="container p-3 my-3 col-md-3 h-100">
    <span>
        <table widht="99%">
            <td align="left" height="40"><h4>Muayene Tarihleri</h4></td>
    </table>
    <table class="table table-bordered table-sm small" border="1" bordercolor="#99999" width="99%" align="center">
        <tr>
            <td><b>No</b></td>
            <td><b>Hayvan No</b></td>
            <td><b>Muayene Tarihi</b></td>
            
        </tr>
        <cfoutput query="Muayeneler">
            <tr>
                <td>#MuayeneID#</td>
                <td>#HayvanID#</td>
                <td>#MuayeneTarihi#</td>
                
            </tr>
        </cfoutput>
    </table>
    </span>
</div>

        
<cfquery name="OlumKaydi" datasource="Ciftlik2" password="1596">
    SELECT * FROM OlumKaydi
</cfquery>

<div class="container p-3 my-3 col-md-3 h-100">
    <span>
        <table widht="99%">
            <td align="left" height="40"><h4>Hayvan Ölüm Listesi</h4></td>
    </table>
    <table class="table table-bordered table-sm small" border="1" bordercolor="#99999" width="99%" align="center">
        <tr>
            <td><b>No</b></td>
            <td><b>Hayvan No</b></td>
            <td><b>Ölüm Tarihi</b></td>
            <td><b>Ölüm Nedeni</b></td>
            
        </tr>
        <cfoutput query="OlumKaydi">
            <tr>
                <td>#OlumID#</td>
                <td>#HayvanID#</td>
                <td>#OlumTarihi#</td>
                <td>#OlumNedeni#</td>
                
            </tr>
        </cfoutput>
    </table>
    </span>
</div>

<cfquery name="SutUretimi" datasource="Ciftlik2" password="1596">
    SELECT * FROM SutUretimi
</cfquery>

<div class="container p-3 my-3 col-md-3 h-100">
    <span>
        <table widht="99%">
            <td align="left" height="40"><h4>Süt Üretimi</h4></td>
    </table>
    <table class="table table-bordered table-sm small" border="1" bordercolor="#99999" width="99%" align="center">
        <tr>
            <td><b>No</b></td>
            <td><b>Hayvan No</b></td>
            <td><b>Üretim Tarihi</b></td>
            <td><b>Üretim Miktarı</b></td>
            
        </tr>
        <cfoutput query="SutUretimi">
            <tr>
                <td>#UretimID#</td>
                <td>#HayvanID#</td>
                <td>#UretimTarihi#</td>
                <td>#UretimMiktarı#</td>
                
            </tr>
        </cfoutput>
    </table>
    </span>
</div>
        

<cfquery name="SutUretimi" datasource="Ciftlik2" password="1596">
    SELECT * FROM SutUretimi
</cfquery>

<div class="container p-3 my-3 col-md-3 h-100">
    <span>
        <table widht="99%">
            <td align="left" height="40"><h4>Süt Üretimi</h4></td>
    </table>
    <table class="table table-bordered table-sm small" border="1" bordercolor="#99999" width="99%" align="center">
        <tr>
            <td><b>No</b></td>
            <td><b>Hayvan No</b></td>
            <td><b>Üretim Tarihi</b></td>
            <td><b>Üretim Miktarı</b></td>
            
        </tr>
        <cfoutput query="SutUretimi">
            <tr>
                <td>#UretimID#</td>
                <td>#HayvanID#</td>
                <td>#UretimTarihi#</td>
                <td>#UretimMiktarı#</td>
                
            </tr>
        </cfoutput>
    </table>
    </span>
</div>


<cfquery name="YemTuketimi" datasource="Ciftlik2" password="1596">
    SELECT * FROM YemTuketimi
</cfquery>

<div class="container p-3 my-3 col-md-3 h-100">
    <span>
        <table widht="99%">
            <td align="left" height="40"><h4>Yem Tüketimi</h4></td>
    </table>
    <table class="table table-bordered table-sm small" border="1" bordercolor="#99999" width="99%" align="center">
        <tr>
            <td><b>No</b></td>
            <td><b>Hayvan No</b></td>
            <td><b>Yem Miktarı</b></td>
            <td><b>Yem Türü</b></td>
            <td><b>Tüketim Tarihi</b></td>
            
        </tr>
        <cfoutput query="YemTuketimi">
            <tr>
                <td>#TuketimID#</td>
                <td>#HayvanID#</td>
                <td>#YemMiktarıKG#</td>
                <td>#YemTuru#</td>
                <td>#TuketimTarihi#</td>
                
            </tr>
        </cfoutput>
    </table>
    </span>
</div>

    
</body>
</html>