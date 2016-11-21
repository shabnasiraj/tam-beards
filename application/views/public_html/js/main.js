$(document).ready(function(){

	$("#form-button").on('click',function(e){
		e.preventDefault();
		$("#logo-info,#logo-container").hide();
		$("#marker-form,#logo-head").fadeIn();

	});
	$("#cancel-button").on('click',function(e){
		e.preventDefault();
		$("#marker-form,#logo-head").hide();
		$("#logo-info,#logo-container").fadeIn();	
	});
	$("#submit-button").on('click',function(e){
		e.preventDefault();
		$.post("http://localhost/hackServer/api/create",function(data){
			console.log(data);
		});
	});	

});
