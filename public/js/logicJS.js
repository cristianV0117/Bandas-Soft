function getForm(){
	var display = document.getElementById("display");
	display.style.display="block";
}
function cancelFormIns(){
	var display = document.getElementById("display");
	display.style.display="none";
}
function deleteInstrument(id) {
	
	$.ajax({
			url: 'http://bandas.cdemas.co/instrument/deleteInstrument',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function edit(id,type) {
	var inputEditIns = document.getElementById("edit_" + id);
	inputEditIns.type = "text";
	var parrafo = document.getElementById("parrafo_" + id);
	parrafo.style.display = "none";
	var button = document.getElementById(id);
	button.innerHTML = "Cancelar";
	button.setAttribute("id",id);
	button.setAttribute("onclick","cancelEdit(this.id)");
	buttonSave = document.createElement("button");
	buttonSave.setAttribute("CLASS","btn btn-success");
	buttonSave.setAttribute("id","save_" + id);
	buttonSave.innerHTML="Aceptar";
	var td_acept = document.createElement("TD");
	td_acept.setAttribute("id","td_acept_"+id);
	td_acept.appendChild(buttonSave);
	document.getElementById("tr_"+id).appendChild(td_acept);
	switch(type){
		case 1:
			buttonSave.setAttribute("onclick","sendEdit(this.id)");
			break;
		case 2:
			buttonSave.setAttribute("onclick","sendEditGenre(this.id)");
			break;
		case 3:
			buttonSave.setAttribute("onclick","sendEditBand(this.id)");
	}
}

function sendEdit(inf) {
	var tmp = inf.split("_");
	var id = tmp['1'];
	var name = document.getElementById("edit_"+id).value;
	$.ajax({
			url: 'http://bandas.cdemas.co/instrument/editInstrument',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id,
				dataName:name	
				
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			//alert("Se ha editado exitosamente");
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	

	
}

function cancelEdit(id) {
	
	var inputEditIns = document.getElementById("edit_" + id);
	inputEditIns.type = "hidden";
	var parrafo = document.getElementById("parrafo_" + id);
	parrafo.style.display = "block";
	var button = document.getElementById(id);
	button.innerHTML = "Editar";
	button.setAttribute("onclick","edit(this.id)");
	var buttonSavecan = document.getElementById("save_" + id);
	var td_button = document.getElementById("td_acept_"+id);
	td_button.removeChild(buttonSavecan);
	document.getElementById("tr_"+id).removeChild(td_button);

}

function deleteGenre(inf) {
	var tmp = inf.split("_");
	var id = tmp['1'];
	$.ajax({
			url: 'http://bandas.cdemas.co/genre/deleteGenre',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function sendEditGenre(inf) {
	var tmp = inf.split("_");
	var id = tmp['1'];
	var name = document.getElementById("edit_"+id).value;
	$.ajax({
			url: 'http://bandas.cdemas.co/genre/editGenre',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id,
				dataName:name	
				
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			//alert("Se ha editado exitosamente");
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function showTable(){
	var element = document.getElementById("tablesC");
	element.style = "visibility:visible";

}

function deleteRecordCompany(inf) {
	console.log(inf);
	var tmp = inf.split("_");
	var id = tmp['1'];
	$.ajax({
			url: 'http://bandas.cdemas.co/recordCompany/deleteRecordCompany',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function deleteMusician(inf) {
	console.log(inf);
	var tmp = inf.split("_");
	var id = tmp['1'];
	$.ajax({
			url: 'http://bandas.cdemas.co/makeMusician/deleteMusician',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function deleteTypeOf(inf) {
	console.log(inf);
	var tmp = inf.split("_");
	var id = tmp['1'];
	$.ajax({
			url: 'http://bandas.cdemas.co/typeOfMusicalP/deleteTypeOf',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function deleteBand(inf) {
	var tmp = inf.split("_");
	var id = tmp['1'];
	$.ajax({
			url: 'http://bandas.cdemas.co/band/deleteBand',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			window.location = 'http://bandas.cdemas.co/band/getInfoBand';
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function sendEditBand(inf) {
	var tmp = inf.split("_");
	var id = tmp['1'];
	var name = document.getElementById("edit_"+id).value;
	console.log(name)
	$.ajax({
			url: 'http://bandas.cdemas.co/band/editBand',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id,
				dataName:name	
				
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			//alert("Se ha editado exitosamente");
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}

function deleteGenreBand(inf) {
	console.log(inf);
	var tmp = inf.split("_");
	var id = tmp['1'];
	$.ajax({
			url: 'http://bandas.cdemas.co/band/deleteGenreBand',
			type: 'POST',
			dataType: 'json',
			headers: {
      			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			},
			data: {
				
				id:id
			},
		})
		.done(function(dataGot) {
			console.log(dataGot);
			location.reload();
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});	
}
 