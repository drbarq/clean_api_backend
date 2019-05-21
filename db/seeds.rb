# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = "https://azure-westeurope-prod.socrata.com/resource/8s2t-pmzs.json" #basic URI for the API endpoint
data = RestClient::Request.execute(method: :get, url: url)               #api request for the data
response = JSON.parse(data)

    response.each do |entry|

            Sighting.create(
              plausibility: entry["plausibility"],
              incident_occurrence: entry["incident_occurrence"],
              incident_location: entry["incident_location"],
              witness_gibberish: entry["witness_gibberish"],
              blood_alcohol_level: entry["blood_alcohol_level"],
              responding_police_department_location: entry["responding_police_department_location"],
              incident_lat: entry["incident_location"].split('(').last.split(',').first.to_f,
              incident_long: entry["incident_location"].split('(').last.split(',').last.to_f
            )
          end
