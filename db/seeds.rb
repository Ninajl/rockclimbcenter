# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gym_list = [
  [ "Alamosa", "Adams State University Climbing Wall", "208 Edgemont Blvd. Alamosa, 81101", "(719)587-7018", "n/a" ]
  [ "Aspen", "Aspen Athletic Club", "720 E. Hyman Ave. Aspen", "n/a", "n/a" ]
  [ "Aspen", "Aspen Rec Dept", "110 E. Hallman St. #135 Aspen, 81611", "(970)920-5140", "www.aspencreation.com" ]
  [ "Boulder", "ABC Kids Climbing", "1960 32nd Street Boulder, 80301", "(303)443-kids", "www.abckidsboulder.com" ]
  [ "Boulder", "Boulder Rock Club", "2829 Mapleton Ave. Boulder, 80301", "(303)447-2804", "www.totalclimbing.com" ]
  [ "Boulder", "CATS Gym", "2400 30th St. Boulder", "(303)939-9699", "n/a" ]
  [ "Boulder", "CU Rec Center", "UCB 355 Boulder, 80309", "(303)492.6080", "www.colorado.edu/rec-center" ]
  [ "Boulder", "Movement Climbing + Fitness", "2845 Valmont Road", "(303)443-1505", "www.movementboulder.com" ]
  [ "Boulder", "The Spot", "3240 Prairie Ave. Boulder, 80301", "(303)379-8806", "www.thespotgym.com" ]
  [ "Breckenridge", "Breckenridge Recreation Center Climbing Wall", "150 Ski Hill Road Breckenridge, CO 80424", "(970)453-2251", "http://www.townofbreckenridge.com/index.aspx?page=1035" ]
  [ "Buena Vista", "Buena Vista Boulder Garden", "PO Box 419 Buena Vista, 81211", "(719)221-1500", "n/a" ]
  [ "Carbondale", "Town of Carbondale Recreation Center", "567 Colorado Ave. Carbondale, 81623", "(970)704-4190", "www.carbondalerec.com" ]
  [ "Centennial", "Rock'n & Jam'n 2", "7390 S. Fraser Street Unit E Centennial, 80112", "(303)254-6299", "www.rocknandjamn.com" ]
  [ "Colorado Springs", "CityROCK CLimbing & Adventure Center", "21 N Nevada Ave. Colorado Springs, 80903", "(719)634-9099", "www.climbcityrock.com" ]
  [ "Colorado Springs", "Sport Climbing Center", "4642 Northpark Dr. Colorado Springs, 80918", "(719)260-1050", "www.sportclimbcs.com" ]
  [ "Colorado Springs", "THE ROCK Climbing Center", "16240 Old Denver Colorado Springs, 80132", "(719)481-9099", "www.climbingtherock.com" ]
  [ "Denver", "Denver Bouldering Club", "2485 W.2nd Ave. #18 Denver, 80223", "(303)351-5588", "www.denverboulderingclub.com" ]
  [ "Denver", "Thrillseekers", "1912 S. Broadway Denver, 80210", "(303)733-8810", "www.thrillseekers.com" ]
  [ "Denver", "Movement Climbing + Fitness Denver", "1155 W 5th Ave. Denver, 80204", "(720)476-7800", "www.movementdenver.com" ]
  [ "Durango", "The Rock Lounge", "1111 Camino Del Rio #105 Durango, 81301", "(970)259-7625", "www.rockloungedurango.com" ]
  [ "Estes Park", "Estes Park Mountain Shop Climbing Gym", "2050 Big Thompson Ave Estes Park, 80517", "(970)586-6548", "www.estesparkmountainshop.com/climbing-gym.htm" ]
  [ "Fort Collins", "Inner Strength", "3713 S. Mason Ft. Collins", "(970)282-8118", "www.innerstrengthrock.com" ]
  [ "Fort Collins", "Miramont Lifestyle Fitness", "1800 Heath Parkway Fort Collins, 80524", "(970)221-5000", "http://www.miramontlifestyle.com/sports/climbing-wall/" ]
  [ "Glenwood Springs", "Glenwood Springs Community Center", "100 Wulfsohn Rd. Glenwood Springs, 81601", "(970)384-6311", "http://www.glenwoodrec.com/climbing-wall" ]
  [ "Golden", "EarthTreks Golden Climbing Center", "700 Golden Ridge Rd. Golden, 80401", "(303)222-9564", "https://www.earthtreksclimbing.com/co/golden/" ]
  [ "Grand Junction", "Grand Valley Climbing", "611 25 Road Grand Junction, 81505", "(970)644-5821", "www.grandvalleyclimbing.com" ]
  [ "Gunnison", "Gunnison Community Center", "200 E. Spencer Ave Gunnison, 81230", "(970)641-8060", "https://apm.activecommunities.com/gunnisonrec/Activity_Search/advanced-indoor-outdoor-rock-climbing/6270" ]
  [ "Gunnison", "Western State College Climbing Wall", "Escalante Fitness Center", "(970)943.3363", "http://www.western.edu/current-students/campus-recreation/mountaineer-field-house/climbing-wall-mountaineer-field-house" ]
  [ "Monument", "CityRock Climbing & Adventures Center", "16240 Old Denver Hwy Monument, 80132", "(719)481-9099", "www.climbcityrock.com" ]
  [ "Thornton", "Rock'n & Jam'n", "9499 N. Washington St. #C Thornton, 80229", "(303)254-4344", "www.rocknandjamn.com" ]
  [ "Vail", "Vail Athletic Club", "352 East Meadow Drive Vail, 81657", "(970)476-7960", "http://www.vailvitalitycenter.com/climbing/" ]

]

gym_list.each do |location, name, link|
  Gym.create(location: location, name: name, address: address, phone: phone, link: link)
