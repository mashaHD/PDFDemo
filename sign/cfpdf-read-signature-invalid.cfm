<cfset fieldFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed_wm.pdf")>

<cfdump var="#fieldFile#" top="2">

<h3>With Signature Field:</h3>
<cfpdf action="readsignaturefields" 
	   source="#fieldFile#" 
	   name="readsignaturefields" >
	   
<cfdump var="#readsignaturefields#" label="Read Signature Fields">	

<h3>Validate Signature Field</h3>
<cfpdf action="validatesignature" 
		source="#fieldFile#" 
		name="signatureValidation" >
		
<cfdump var="#signatureValidation#" label="Validate Signature">