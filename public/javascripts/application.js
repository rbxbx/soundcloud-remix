function startUpload(id){

	$('#remix_file').uploadifySettings('hideButton','true');
	$('#remix_fileUploader').width(1);
	$('#remix_fileUploader').height(1);
	
	$('#form_header,#title,#info,#upload').hide();
	
	$('.uploadifyHeader,.uploadifyProgress,.cancel').show();
	
	$('#remix_file').uploadifySettings('scriptData',{'title' : $('#remix_title').val()});
  $('#remix_file').uploadifyUpload();

}