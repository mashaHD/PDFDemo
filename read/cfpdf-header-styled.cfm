<cfset thisFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url.pdf")>
<cfset hfFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url-header-styled.pdf")>

<cfsavecontent variable="headerText">
    <span style="font-size: 15pt; font-family: Comic Sans MS;">
       <b style="color: #55373d;">Here We Go Again!</b><br/>
    </span>
</cfsavecontent>

<cfpdf action="addheader" source="#thisFile#" 
	   text="#headerText#" destination="#hfFile#" 
	   topMargin="1" overwrite="yes" 
	   />

<cfpdf action="read" name="myPDF" source="#hfFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />