<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
	<html lang="en">

<head>
    <title>Elecciones</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body style="color: #002850;">
    <div class="m-2 mb-0">
        <header class="container-fluid">
            <div class="row justify-content-between align-items-center p-1">
                <div class="col">
                    <img src="img/logoelecciones.png" class="img-fluid" width="200px" alt="" />
                </div>
                <div class="col text-center">
                    <h3>Elecciones Autonómicas Castilla la Mancha 2023</h3>
                </div>
                <div class="col text-end">
                    <img src="img/logoclm.png" class="img-fluid" width="150px" alt="" />
                </div>
            </div>
        </header>
        <main>
            <section class="container-fluid  text-center rounded p-2" style="background-color: #002850;">
                <h3 class="text-white">Participación</h3>
            </section>
            <section class="container- m-0">
                <div class="row justify-content-center">
                    <div class="col-6 col-lg-3 mt-2 text-center">
                        <div class="card border-danger border-2" style="color: #002850;">
                            <div class="card-body">
                                <h4 class="card-title">Contabilizados</h4>
                                <p class="card-text"><xsl:value-of select="elecciones/votos/contabilizados/@numero"/> - <xsl:value-of select="elecciones/votos/contabilizados/porcentaje"/>%</p>
                            </div>
                        </div>

                    </div>
                    <div class="col-6 col-lg-3 mt-2 text-center">
                        <div class="card border-danger border-2" style="color: #002850;">
                            <div class="card-body">
                                <h4 class="card-title">Abstenciones</h4>
                                <p class="card-text"><xsl:value-of select="elecciones/votos/abstenciones/@numero"/> - <xsl:value-of select="elecciones/votos/abstenciones/porcentaje"/>%</p>
                            </div>
                        </div>

                    </div>
                    <div class="col-6 col-lg-3 mt-2 text-center">
                        <div class="card border-danger border-2" style="color: #002850;">
                            <div class="card-body">
                                <h4 class="card-title">Nulos</h4>
                                <p class="card-text"><xsl:value-of select="elecciones/votos/nulos/@numero"/> - <xsl:value-of select="elecciones/votos/nulos/porcentaje"/>%</p>
                            </div>
                        </div>

                    </div>
                    <div class="col-6 col-lg-3 mt-2 text-center">
                        <div class="card border-danger border-2" style="color: #002850;">
                            <div class="card-body">
                                <h4 class="card-title">Blancos</h4>
                                <p class="card-text"><xsl:value-of select="elecciones/votos/blancos/@numero"/> - <xsl:value-of select="elecciones/votos/blancos/porcentaje"/>%</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <section class="container-fluid text-center p-2 mt-2 rounded m-0 " style="background-color: #002850;">
                <h3 class="text-white">Resultados</h3>
            </section>
            <section class="container-fluid ">
                <div class="row justify-content-center">
                <xsl:for-each select="elecciones/resultados/partido">
                     <div class="col-6 col-lg-3 mt-2 ">
                        <div class="card border-danger border-2" style="color: #002850;">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6">
                                        <img src="img/{@logo}.png" alt=""/>
                                    </div>
                                    <div class="col-6">
                                        <h4 class="card-title"><i class="fa fa-user me-2" aria-hidden="true"></i><xsl:value-of select="escanos"/></h4>
                                        <p class="card-text"><xsl:value-of select="votos"/>- <xsl:value-of select="porcentaje"/>%</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </xsl:for-each>
                   

                </div>
            </section>
            <section class="container-fluid text-center p-2 mt-2 mb-2 rounded" style="background-color: #002850;">
                <h3 class="text-white">Por provincias</h3>
            </section>
            <section class="container-fluid">
            <xsl:for-each select="elecciones/provincia">
                  <div class="accordion " id="accordionExample" style="color: #002850;">
                    <div class="accordion-item">
                        <h2 class="accordion-header " id="headingOne">
                            <button class="accordion-button bg-white" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapse{@id}" aria-expanded="true" aria-controls="collapseOne">
                                <h3 class=""><xsl:value-of select="@nombre"/></h3>
                            </button>
                        </h2>
                        <div id="collapse{@id}" class="accordion-collapse collapse " aria-labelledby="headingOne">
                            <div class="accordion-body">
                                <section class="container-fluid">
                                    <div class="row justify-content-center">
                                        <div class="col-6 col-lg-3 mt-2 text-center">
                                            <div class="card border-danger border-2" style="color: #002850;">
                                                <div class="card-body">
                                                    <h4 class="card-title">Contabilizados</h4>
                                                    <p class="card-text"><xsl:value-of select="votos/contabilizados/@numero"/> - <xsl:value-of select="votos/contabilizados/porcentaje"/>%</p>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-6 col-lg-3 mt-2 text-center">
                                            <div class="card border-danger border-2" style="color: #002850;">
                                                <div class="card-body">
                                                    <h4 class="card-title">Abstenciones</h4>
                                                    <p class="card-text"><xsl:value-of select="votos/abstenciones/@numero"/> - <xsl:value-of select="votos/abstenciones/porcentaje"/>%</p>
                                                </div>
                                            </div>
                    
                                        </div>
                                        <div class="col-6 col-lg-3 mt-2 text-center">
                                            <div class="card border-danger border-2" style="color: #002850;">
                                                <div class="card-body">
                                                    <h4 class="card-title">Nulos</h4>
                                                    <p class="card-text"><xsl:value-of select="votos/nulos/@numero"/> - <xsl:value-of select="votos/nulos/porcentaje"/>%</p>
                                                </div>
                                            </div>
                    
                                        </div>
                                        <div class="col-6 col-lg-3 mt-2 text-center">
                                            <div class="card border-danger border-2" style="color: #002850;">
                                                <div class="card-body">
                                                    <h4 class="card-title">Blancos</h4>
                                                    <p class="card-text"><xsl:value-of select="votos/blancos/@numero"/> - <xsl:value-of select="votos/blancos/porcentaje"/>%</p>
                                                </div>
                                            </div>
                    
                                        </div>
                                    </div>
                                    
                                </section>
                                <hr class="border border-2 border-primary" />
                                <section class="container-fluid">
                                    <div class="row justify-content-center">
                                    <xsl:for-each select="resultados/partido">
                                    <xsl:sort select="votos" order="descending" data-type="number"> </xsl:sort>
                                         <div class="col-6 col-lg-3 mt-2 ">
                                            <div class="card border-danger border-2" style="color: #002850;">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <img src="img/{@logo}.png" alt=""/>
                                                        </div>
                                                        <div class="col-6">
                                                        <xsl:choose>
                                                            <xsl:when test="escanos=0">
                                                                <h4 class="card-title text-danger"><i class="fa fa-user me-2"
                                                                    aria-hidden="true"></i><xsl:value-of select="escanos"/> </h4>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                 <h4 class="card-title"><i class="fa fa-user me-2"
                                                                    aria-hidden="true"></i><xsl:value-of select="escanos"/> </h4>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                           
                                                            <p class="card-text"><xsl:value-of select="votos"/> - <xsl:value-of select="porcentaje"/> %</p>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </xsl:for-each>
                                     

                                       

                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>

                </div>

            </xsl:for-each>
              
            </section>
        </main>
        <footer class="container-fluid text-center p-2 rounded mt-2 " style="background-color: #002850;">
            <h2 class="text-white">XSL-S1DAM-S1DAW</h2>
        </footer>
    </div>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>
		
	</xsl:template>
</xsl:stylesheet>