$(document).on "ajax:beforeSend", "#emails-form", ()->
	$("#email-info").html "Se esta procesando tu petición"
$(document).on "ajax:success", "#emails-form", (e,data,estado,xhr)->
	$(this).slideUp()
	$("#email-info").addClass("big")
	$("#email-info").addClass("kostic")
	$("#email-info").addClass("green")
	$("#email-info").removeClass("red")
	$("#email-info").html "¡Excelente!. Ya estas en la fila de las invitaciones beta."
$(document).on "ajax:error", "#emails-form", (e,data,estado,xhr)->
	$("#email-info").html data.responseJSON.email[0]

$(document).on "ready page:load", ()->
	$.material.init()
