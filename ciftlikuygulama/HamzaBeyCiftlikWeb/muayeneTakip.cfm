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
        <h3>Muayene Takibi</h3>
    </div>
    <div name="MuayeneTakip" class="container-fluid">
        <div class="row">
            <div class="container p-3 m-3 col-md-3">
                <cfform name="MuayeneTakip" action="add\addMuayene.cfm" method="post">
                    <table>
                        <tr><td><h6>Muayene Kaydı</h6></td></tr>
                    </table>
                    <table class="table table-bordered table-sm small" align="center" widht="99%" border="1" bordercolor="#99999">
                        <tr>
                            <td>Hayvan No</td>
                            <td>:<cfinput name="HayvanID" type="text" maxlength="10"></td>
                            </td>
                        </tr>
                        <tr>
                            <td>Muayene Tarihi</td>
                            <td>:<cfinput type="date" name="MuayeneTarihi"></td>
                        </tr>
                        <tr>
                            <td>Yapılan İşlemler</td>
                            <td>:<cfinput name="YapilanIslemler" type="text" maxlength="50"></td>
                        </tr>

                        <tr>
                          <td>Muayene Notları</td>
                          <td>:<cfinput name="MuayeneNotlari" type="text" maxlength="50"></td>
                          </td>
                      </tr>
                        <tr>
                            <td>Kayıt ediniz.</td>
                            <td>:<cfinput name="save" type="submit" value="kaydet"></td>
                        </tr>
                    </table>
                </cfform>
            </div>

      <cfquery name="Muayeneler" datasource="Ciftlik2" password="1596">
        SELECT * FROM Muayeneler
    </cfquery>

<div class="container p-3 my-3 col-md-3 h-100">
    <span>
        <table widht="99%">
            <td align="left" height="40"><h4>Muayene Listesi</h4></td>
    </table>
    <table class="table table-bordered table-sm small" border="1" bordercolor="#99999" width="99%" align="center">
        <tr>
            <td><b>MuayeneID</b></td>
            <td><b>HayvanID</b></td>
            <td><b>Muayene Tarihi</b></td>
            <td><b>Yapılan İşlemler</b></td>
            <td><b>Muayene Notları</b></td>
            <td><b>Kayıt Tarihi</b></td>
        </tr>
        <cfoutput query="Muayeneler">
            <tr>
                <td>#MuayeneID#</td>
                <td>#HayvanID#</td>
                <td>#MuayeneTarihi#</td>
                <td>#YapilanIslemler#</td> 
                <td>#MuayeneNotlari#</td> 
                <td>#KayitTarihi#</td> 
            </tr>
        </cfoutput>
    </table>
    </span>
</div>
    
</body>
</html>