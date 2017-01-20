google.charts.load('current', {'packages':['corechart']});


function loadData() {

	var request = {
		a : jQuery('#a').val(),
		b : jQuery('#b').val(),
		c : jQuery('#c').val()
	}

	jQuery.post('dummy_data.js', request, function(response){

		console.log(response)

		chartData = google.visualization.arrayToDataTable(response);

		var options = {
			title: 'Collected Data',
			curveType: 'function',
			legend: { position: 'bottom' }
		};


		var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

		chart.draw(chartData, options);


	}, 'json');


}