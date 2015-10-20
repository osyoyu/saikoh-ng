# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

event = Event.new({name: 'saikoh.tk'})

buttons = Button.create([
                            {
                                name: '最高',
                                event: event,
                                image: File.read(File.expand_path('seeds/saikoh.png', __FILE__))
                            },
                            {name: 'エモい', event: event},
                            {name: 'IMAGINE THE FUTURE.', event: event},
                            {name: 'We Are the Champions', event: event}
                        ])

event.buttons = buttons
event.save
