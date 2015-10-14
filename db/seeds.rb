# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

buttons = Button.create([
                            {name: '最高'},
                            {name: 'エモい'},
                            {name: 'IMAGINE THE FUTURE.'},
                            {name: 'We Are the Champions'}
                        ])

Event.create({name: 'saikoh.tk', })