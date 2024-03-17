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
        <h3>Hayvanlar</h3>
    </div>
    <div name="HayvanKayit" class="container-fluid">
        <div class="row">
            <div class="container p-3 m-3 col-md-3">
                <cfform name="HayvanKayit" action="add\addHayvan.cfm" method="post">
                    <table>
                        <tr><td><h6>Hayvan Kaydı</h6></td></tr>
                    </table>
                    <table class="table table-bordered table-sm small" align="center" widht="99%" border="1" bordercolor="#99999">
                        <tr>
                            <td>Hayvan Türü</td>
                            <td>:<select name="Tur">
                                <option value="Inek">İnek</option>
                                <option value="Keci">Keçi</option>
                                <option value="Koyun">Koyun</option>
                            </td>
                        </tr>
                        <tr>
                            <td>Hayvan Yaşı</td>
                            <td>:<cfinput name="Yas" type="text" maxlength="10"></td>
                        </tr>
                        <tr>
                            <td>Sağlık Durumu</td>
                            <td>:<select name="SaglikDurumu">
                                <option value="Saglikli">Sağlıklı</option>
                                <option value="Hasta">Hasta</option>
                            </td>
                        </tr>

                        <tr>
                            <td>Kayıt ediniz.</td>
                            <td>:<cfinput name="save" type="submit" value="kaydet"></td>
                        </tr>
                    </table>
                </cfform>
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
            <td><b>Kayıt Tarihi</b></td>
        </tr>
        <cfoutput query="Hayvanlar">
            <tr>
                <td>#HayvanID#</td>
                <td>#Tur#</td>
                <td>#Yas#</td>
                <td>#SaglikDurumu#</td> 
                <td>#KayitTarihi#</td> 
            </tr>
        </cfoutput>
    </table>
    </span>
</div>
    
</body>
</html>