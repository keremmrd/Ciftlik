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

      <h2>Excel Dosyası Yükle ve SQL Server'a Aktar</h2>

      <form action="#CGI.SCRIPT_NAME#" method="post" enctype="multipart/form-data">
          <label for="excelFile">Excel Dosyası Seçin:</label>
          <input type="file" name="excelFile" id="excelFile" accept=".xls,.xlsx" required><br><br>
          <input type="submit" value="Yükle">
      </form>
      
      <cfif StructKeyExists(form, "excelFile")>
          <cftry>
              <!--- Excel dosyasını oku --->
              <cfspreadsheet action="read" src="#form.excelFile#" query="excelData" headerrow="1">
              
              <!--- SQL Server veritabanı bağlantısı için gerekli bilgiler --->
              <cfset datasource = "Ciftlik2">
              <cfset password = "1596">
              
              <!--- SQL Server veritabanına veri ekleme işlemi --->
              <cfquery datasource="Ciftlik2" password="1596">
                  INSERT INTO Hayvanlar (Tur, Yas, SaglikDurumu)
                  VALUES 
                  <cfloop query="excelData" startrow="2">
                      <cfif excelData.CurrentRow GT 2>,</cfif>
                      (
                          <cfqueryparam value="#excelData.Tur#" cfsqltype="CF_SQL_VARCHAR">,
                          <cfqueryparam value="#excelData.Yas#" cfsqltype="CF_SQL_INTEGER">,
                          <cfqueryparam value="#excelData.SaglikDurumu#" cfsqltype="CF_SQL_VARCHAR">
                      )
                  </cfloop>
              </cfquery>
              
              <cfoutput>Veriler başarıyla SQL Server veritabanına aktarıldı.</cfoutput>
              
              <cfcatch>
                  <cfoutput>Hata: #cfcatch.Message#</cfoutput>
              </cfcatch>
          </cftry>
      </cfif>
      
    

</body>
</html>