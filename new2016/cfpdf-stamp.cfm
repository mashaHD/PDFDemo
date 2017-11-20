<cfset thisFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url.pdf")>
<cfset stampFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url-stamp.pdf")>

<cfpdf action="addStamp" source="#thisFile#" destination="#stampFile#" overwrite="yes" >
	<cfpdfparam pages="4" coordinates = "100,50,300,110" iconname="NotForPublicRelease" note="stamp1"/> 
	<cfpdfparam pages="1" coordinates = "377,670,599,600" iconname="ForComment" note="Comment could go here"/>
</cfpdf>

<cfpdf action="read" name="myDoc" source="#stampFile#" />
<cfcontent variable="#toBinary(myDoc)#" type="application/pdf" />