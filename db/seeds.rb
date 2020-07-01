# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy old db..."
User.destroy_all
Screening.destroy_all
puts "done.."
puts "Create new seeds..."
new_user = User.new do |u|
  u.username = "1111"
  u.password = "123456"
  u.password_confirmation = "123456"
end
new_user.save!
5.times do
  new_screening = Screening.new do |s|
    x = rand(1..5)
    s.Fantasie = rand(1..5)
    s.Realitaetsbezug = rand(1..5)
    s.Selbstbild = rand(1..5)
    s.Gefuehle = rand(1..5)
    s.Schwingungsfaehigkeit = rand(1..5)
    s.Aggressivitaet = rand(1..5)
    s.Frustrationstoleranz = rand(1..5)
    s.Stimmung = rand(1..5)
    s.Motivation = rand(1..5)
    s.Durchsetzung = rand(1..5)
    s.Kontaktaufnahme = rand(1..5)
    s.Regeln = rand(1..5)
    s.Teamarbeit = rand(1..5)
    s.Kritik = rand(1..5)
    s.Aufmerksamkeit = rand(1..5)
    s.Ausdauer = rand(1..5)
    s.Konzentration = rand(1..5)
    s.Merkfaehigkeit = rand(1..5)
    s.sensWahrnehmun = rand(1..5)
    s.Selbststaendigkeit = rand(1..5)
    s.Flexibilitaet = rand(1..5)
    s.Antrieb = rand(1..5)
    s.Entscheidungsfaehigkeit = rand(1..5)
    s.Feinmotorik = rand(1..5)
    s.Selbstkontrolle = rand(1..5)
    s.Problemloesen = rand(1..5)
    s.Sorgfalt = rand(1..5)
    s.created_at = Time.new(2020,06,x)
    x + 1
  end
new_screening.user = new_user
new_screening.save!
end
puts "done"
