import database

class AppModel:

	def getExperimentList(model, request):
		query = "SELECT * FROM users"
		return database.get_results(query)		


	def getExperiment(model, request):
		
		if "experimentId" in request :
			name = request["experimentId"]
			query = "SELECT * FROM users where name='{}' LIMIT 1".format(name)
			experiment = database.get_row(query)
			return experiment

		return {"error" : "Request Error: No experimentId requested"}
