require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokemon.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')

csv.each do |row|
  p = Pokemon.new
  p.number = row['#']
  p.name = row['Name']
  p.type1 = row['Type 1']
  p.type2 = row['Type 2']
  p.total = row['Total']
  p.hp = row['HP']
  p.attack = row['Attack']
  p.defense = row['Defense']
  p.spAtk = row['Sp. Atk']
  p.spDef = row['Sp. Def']
  p.speed = row['Speed']
  p.generation = row['Generation']
  p.legendary = row['Legendary'] != 'False'
  p.save
  puts "#{p.number}, #{p.name} saved" if p.legendary
end

puts "There are now #{Pokemon.count} rows in the pokemon table"