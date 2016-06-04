# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Resort.destroy_all
Trip.destroy_all
Location.destroy_all

Resort.create([{name: 'Solitude', zip_code: '84121'},
											 {name: 'Park City/Canyons', zip_code: '84060'},
											  {name: 'Sundance', zip_code:'84604'},
											  {name: 'Powder Mountain', zip_code: '84310'},
											  {name: 'Beaver Mountain', zip_code: '84321'},
											  {name: 'Snowbird', zip_code: '84092'},
											  {name: 'Brighton', zip_code: '84121'},
											  {name: 'Brian Head', zip_code: '84719'},
											  {name: 'Alta', zip_code: '84092'},
											  {name: 'Richmond', zip_code: '84333'},
											  {name: 'Deer Valley', zip_code: '84060'},
											  {name: 'Snow Basin', zip_code: '84317'}
											  ])

t = Trip.create(title: 'new trip', description: 'fun trip', date: 'tomorrow')
r = Resort.last

Location.create(trip_id: t, resort_id: r) 
Resort.first.trips.create(title: 'new trip', description: 'fun trip', date: 'tomorrow')