component javaPDF {

	function init(){
		local.PDFObj = createObject("java","com.lowagie.text.pdf.PdfReader");

		writeDump(var=local.PDFObj,top="2");
		abort;
		
	}



}

