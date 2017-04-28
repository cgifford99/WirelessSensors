
var app = angular.module('WirelessSensorsApp', []);
google.charts.load('current', {'packages':['corechart']});


app.controller('WirelessSensorsCtrl', ['$scope', '$http', '$sce', '$rootScope', '$window',
	function($scope, $http, $sce, $rootScope, $window){


		$scope.state = {
			selectedExperiment : "test"
		}

		

		$scope.updateExperimentListFromScript = function(){
			$scope.experiments = [
				{
					experimentId : 27,
					title : "Number 4",
					author : "Alan Lucas"

				},
				{
					experimentId : 28,
					title : "Number 5",
					author : "Alan Lucas"
				},
				{
					experimentId : 29,
					title : "Number 6",
					author : "Alan Lucas"
				}
			];

			upgradeMDL();
		}

		$scope.updateExperimentListFromServer = function(){

			var request = {
				"verb" : "getExperimentList"
			}

			$http({
				method: 'POST',
				url: '/',
				data : request
			}).then(
				function(rawResponse){
					var response = rawResponse.data;

					$scope.experiments = response;
					
					upgradeMDL();
				}
			);
		}


		




		$scope.loadExperiment = function(experiment){

			var request = {
				verb : "getExperiment",
				experimentId : experiment.experimentId
			}

			console.log(request)

			$http({
				method: 'POST',
				url: '/',
				data : request
			}).then(
				function(rawResponse){

					var response = rawResponse.data;


					console.log(response);

					
					// chartData = google.visualization.arrayToDataTable(response.data);

					// var chart = new google.visualization.LineChart(document.getElementById('line-graph'));

					// chart.draw(chartData, response.meta);


				}
			);
			
		}


		

	}
]);

upgradeMDL = function(){
	setInterval("componentHandler.upgradeDom();", 100);
}


