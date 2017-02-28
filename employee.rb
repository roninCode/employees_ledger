# employee1 = ["Manila", "Campos", 80000, true]
# employee2 = ["Danilo", "Carter", 70000, false]

# # Manila Campos makes $80000 per year
# p "#{employee1[0]} #{employee1[1]} makes $#{employee1[2]} per year"
# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year"


# # HASH with strings
# employee1 = {
#   "first_name" => "Manila", 
#   "last_name" => "Campos", 
#   "salary" => 80000, 
#   "active_status" => true}

# employee2 = {
#   "first_name" => "Danilo", 
#   "last_name" => "Carter", 
#   "salary" => 70000, 
#   "active_status" => false}

#   p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."
#   p "#{employee2['first_name']} #{employee2['last_name']} makes $#{employee2['salary']} per year."



# # HASH with symbols
#   # Traditional Syntax
# employee1 = {
#   :first_name => "Manila", 
#   :last_name => "Campos", 
#   :salary => 80000, 
#   :active_status => true}
#   # New Syntax ---- fancy js syntax
# employee2 = {
#   first_name: "Danilo", 
#   last_name: "Carter", 
#   salary: 70000, 
#   active_status: false}

#   p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."
#   p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."


class Employee
  def initialize(input_fist_name, input_last_name, input_salary, input_active)
    @first_name = input_fist_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end
  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

end

employee1 = Employee.new("Manila", "Campos", 80000, true)
employee1.print_info

employee2 = Employee.new("Danilo", "Carter", 70000, false)
employee2.print_info