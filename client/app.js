
var app = angular.module('WirelessSensorsApp', []);
google.charts.load('current', {'packages':['corechart']});


app.controller('WirelessSensorsCtrl', ['$scope', '$http', '$sce', '$rootScope', '$window',
	function($scope, $http, $sce, $rootScope, $window){


		$scope.state = {
			selectedExperiment : "test"
		}

		$scope.experiments = [
			{
				experimentId : 27,
				name : "Number 1",
				date : "4/29/18",
				time : "3:40 PM"

			},
			{
				experimentId : 28,
				name : "Number 2",
				date : "4/29/18",
				time : "4:00 PM"
			},
			{
				experimentId : 29,
				name : "Number 3",
				date : "4/30/18",
				time : "4:20 PM"

			}
		]


		$scope.loadExperiment = function(experiment){
		var experimentId = $scope.experiments[2].experimentId

			var request = {
				experimentId : experiment.experimentId
			}

			console.log('test')

			$http({
				method: 'POST',
				url: 'data/dummy_experiment.js'
			}).then(
				function(rawResponse){

					var response = rawResponse.data;

					chartData = google.visualization.arrayToDataTable(response.data);

					var chart = new google.visualization.LineChart(document.getElementById('line-graph'));

					chart.draw(chartData, response.meta);


				}
			);
			
		}



	}
]);


