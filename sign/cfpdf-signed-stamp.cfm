<cfset thisFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed.pdf")>
<cfset outFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed_stamp.pdf")>

<cfpdf action="addStamp" source="#thisFile#" destination="#outFile#" overwrite="yes" >
	<cfpdfparam pages="1" coordinates = "350,100,550,160" iconname="Approved" note="stamp1"/> 
</cfpdf>

<cfpdf action="read" name="myDoc" source="#outFile#" />
<cfcontent variable="#toBinary(myDoc)#" type="application/pdf" />