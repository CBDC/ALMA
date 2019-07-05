<resource schema="alma">
<meta name="title">ALMA catalog</meta>
  <meta name="creationDate">2018-08-13T21:02:03</meta>
  <meta name="description">
     ALMA photometry of extragalactic radio sources
  </meta>
  <meta name="creator.name">Bonato et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">ALMA sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">millimeter</meta>
   </meta>

   <meta name="source">
    Bonato et al. 2019, MNRAS, 485, 1188
   </meta>

   <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="ID">
    <index columns="RA,Dec"/>

   <column name="ID" type="integer"
     ucd="meta.id;meta.main"
     tablehead="ID" verbLevel="1"
     description="ID number"
     required="True"/>

   <column name="ALMA_name" type="text"
     ucd="meta.id.cross;meta.main"
     tablehead="ALMA_Name" verbLevel="1"
     description="ALMA Name"
     required="True"/>

    <column name="Classification" type="integer"
      ucd="meta.code.class"
      tablehead="Classification" verbLevel="1"
      description="Classification Code"
      required="True"/>

    <column name="z" type="text"
     ucd="src.redshift"
     tablehead="Z" verbLevel="1"
     description="Redshift"
     required="True"/>

    <column name="RA" type="real"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="RA" verbLevel="1"
      description="Right Ascension"
      required="True"/>

    <column name="DEC" type="real"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec" verbLevel="1"
      description="Declination"
      required="True"/>

   <column name="Flux_density" type="real"
     unit="Jansky" ucd="phot.flux.density;em.radio.200-400MHz"
     tablehead="Flux_density" verbLevel="1"
     description="FLUX density"
     required="True"/>

   <column name="Error_Flux_density" type="real"
     unit="Jansky" ucd="stat.error;phot.flux.density;em.radio.200-400MHz"
     tablehead="Error_Flux_density" verbLevel="1"
     description="Error Flux density"
     required="True"/>

   <column name="ALMA_band" type="integer"
     ucd="instr.bandpass;em.radio.200-400MHz"
     tablehead="ALMA_band" verbLevel="1"
     description="ALMA band"
     required="True"/>

   <column name="Frequency" type="real"
     unit="GHz" ucd="em.freq;em.radio.200-400MHz"
     tablehead="Frequency" verbLevel="1"
     description="Frequency"
     required="True"/>

   <column name="Date_of_observation" type="text"
     unit="Year/Month/Date" ucd="time"
     tablehead="Date_of_observation" verbLevel="1"
     description="Date of observation"
     required="True"/>

  </table>

  <data id="import">
    <sources>alma.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">ALMA catalog</meta>
    <meta name="shortName">ALMA cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

<!--
    <publish render="scs.xml" sets="local"/>
-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
