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
		/*var lang = $("#exampleSelect1").val();
		var text= $("#exampleTextarea").val();*/
		$.ajax({

			type:"POST",
			url:"index.php/api/create",
			data:$("#adForm").serialize(),
			success: function(response){
				window.open("index.php/index/sample/"+response,"popupWindow", "width=600,height=600,scrollbars=yes");
				$("#marker-form,#logo-head").hide();
				$("#logo-info,#logo-container").fadeIn();
			},

			error:function(error){

				console.log(error);
			}

		});


	});


});