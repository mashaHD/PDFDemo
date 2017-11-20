<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop.pdf")>

<cfpdfform action="populate" source="#thisFile#" destination="#outFile#" overwrite="true">
    <!--- text fields --->
    <cfpdfformparam name="Name_First" value="John">
    <cfpdfformparam name="Name_Last" value="Doe">
    <cfpdfformparam name="Name_Middle" value="A">
    <!--- radio button --->
    <cfpdfformparam name="Sex" value="MALE">
    <!--- checkbox --->
    <cfpdfformparam name="BACHELORS DEGREE" value="On">
</cfpdfform>

<cfpdf action="read" name="myPDF" source="#outFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />