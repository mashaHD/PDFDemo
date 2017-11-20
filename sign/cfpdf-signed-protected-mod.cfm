<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_protected_signed.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_protected_signed_mod.pdf")>

<cfpdfform action="populate" source="#thisFile#" destination="#outFile#" overwrite="true">
    <!--- text field --->
    <cfpdfformparam name="Name_First" value="Jane">
    <cfpdfformparam name="Sex" value="FEMALE">
</cfpdfform>

<cfpdf action="read" name="myPDF" source="#outFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />
