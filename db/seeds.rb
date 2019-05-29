Traveler.destroy_all
Plan.destroy_all
Activity.destroy_all
Location.destroy_all

#Activity data
Activity.create(name: "Six Flags", description: "Amusement Park", rating: 2, time_open: '09:00:00', time_close: '21:00:00')
Activity.create(name: "Madison Square Garden", description: "Sports Arena/Music Venue", rating: 5, time_open: '16:00:00', time_close: '00:00:00')
Activity.create(name: "Webster Hall", description: "Music Venue", rating: 5, time_open: '18:00:00', time_close: '00:00:00')
Activity.create(name: "Central Park", description: "Public NYC Park", rating: 4, time_open: '06:00:00', time_close: '01:00:00')
Activity.create(name: "Chelsea Piers", description: "Multipurpose Venue", rating: 3, time_open: '08:00:00', time_close: '11:00:00')
Activity.create(name: "Long Island Skydiving Center", description: "Skydiving", rating: 4, time_open: '12:00:00', time_close: '20:00:00')
Activity.create(name: "Brookfield Place", description: "Shopping Mall", rating: 2, time_open: '10:00:00', time_close: '20:00:00')
Activity.create(name: "Brooklyn Botanic Garden", description: "52-acre Garden", rating: 3, time_open: '08:00:00', time_close: '18:00:00')
Activity.create(name: "Bryant Park", description: "Public NYC Park", rating: 2, time_open: '07:00:00', time_close: '22:00:00')
Activity.create(name: "Chuck E Cheese", description: "Arcade/Restaurant", rating: 3, time_open: '11:00:00', time_close: '22:00:00')

#Traveler data
Traveler.create(name: "Chris")
Traveler.create(name: "Christian")
Traveler.create(name: "Hannah")
Traveler.create(name: "Joey")
Traveler.create(name: "Freddie")

#Location data
Location.create(name: "Manhattan")
Location.create(name: "Brooklyn")
Location.create(name: "Bronx")
Location.create(name: "Long Island")
Location.create(name: "New Jersey")
