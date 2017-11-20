<cfset fieldFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed.pdf")>
<cfset nofieldFile = ExpandPath("\assets\PDFs\interactiveform_enabled_pop_signed_no_field.pdf")>

<h3>With Signature Field</h3>
<cfpdf action="readsignaturefields" 
	   source="#fieldFile#" 
	   name="readsignaturefields" >
	   
<cfdump var="#readsignaturefields#" label="Read Signature Fields">	

<h3>Without Signature Field</h3>
<cfpdf action="readsignaturefields" 
	   source="#nofieldFile#" 
	   name="readsignaturefields2" >
	   
<cfdump var="#readsignaturefields2#" label="Read Signature Fields">	

<h3>Validate Signature Field</h3>
<cfpdf action="validatesignature" 
		source="#fieldFile#" 
		name="signatureValidation" >
		
<cfdump var="#signatureValidation#" label="Validate Signature">

<h3>Validate - No Signature Field</h3>
<cfpdf action="validatesignature" 
		source="#nofieldFile#" 
		name="signatureValidation2" >
		
<cfdump var="#signatureValidation2#" label="Validate Signature">