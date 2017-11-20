<cfset thisFile = ExpandPath("\assets\PDFs\cfhtmltopdf-url.pdf")>

<cfhtmltopdf source="https://www.today.com/pets/april-giraffe-pregnant-again-park-official-says-stay-tuned-t118673" 
			 destination="#thisFile#" 
			 overwrite="true"
			 margintop="2"
			 unit="cm">

			<cfhtmltopdfitem type="footer">
				Page: _PAGENUMBER of _LASTPAGENUMBER 
			</cfhtmltopdfitem>

</cfhtmltopdf>

<cfpdf action="read" name="myPDF" source="#thisFile#" />
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />
 






















<!--- code generated --->
<!--- <cfhtmltopdf>
This is a test <cfoutput>#now()#</cfoutput>
</cfhtmltopdf> --->

