employee1 = ["Manila", "Campos", 80000, true]
employee2 = ["Danilo", "Carter", 70000, false]

# Manila Campos makes $80000 per year
p "#{employee1[0]} #{employee1[1]} makes $#{employee1[2]} per year"
p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year"


# HASH with strings
employee1 = {
  "first_name" => "Manila", 
  "last_name" => "Campos", 
  "salary" => 80000, 
  "active_status" => true}

employee2 = {
  "first_name" => "Danilo", 
  "last_name" => "Carter", 
  "salary" => 70000, 
  "active_status" => false}

  p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."
  p "#{employee2['first_name']} #{employee2['last_name']} makes $#{employee2['salary']} per year."



# HASH with symbols
  # Traditional Syntax
employee1 = {
  :first_name => "Manila", 
  :last_name => "Campos", 
  :salary => 80000, 
  :active_status => true}
  # New Syntax ---- fancy js syntax
employee2 = {
  first_name: "Danilo", 
  last_name: "Carter", 
  salary: 70000, 
  active_status: false}

  p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."
  p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."








