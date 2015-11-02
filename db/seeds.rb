# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

joe = User.find_or_initialize_by(email: "joeschmoe@joe.co")

joe.update(password: "i<3potatoes")

sniffing = Transgression.find_or_create_by(description: "I can't stop myself from sniffing other people's hair.", sin_type: "Lust", sinner: joe)

confession = sniffing.confessions.create(description: "Creeped up behind someone in the subway.")
