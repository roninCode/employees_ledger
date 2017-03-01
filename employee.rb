require 'faker'
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
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active 


  def initialize(input_options)
    @first_name = input_options[:first_name].nil? ? input_options[:first_name] = "Rodriguez" : input_options[:first_name]
    @last_name = (input_options[:last_name]).nil? ? input_options[:last_name] = "Sugarman" : input_options[:last_name]
    @salary = input_options[:salary].nil? ? input_options[:salary] = "0" : input_options[:salary]
    @active = input_options[:active].nil? ? input_options[:actuve] = false : input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end
  def give_annual_raise
    #change salary
    @salary *= 1.05
  end
  def full_name
    full_name = "#{first_name} #{last_name}"
    if full_name.split("").last.downcase == "s"
      full_name = "#{first_name} #{last_name}, Esquire"
    end
    return full_name
  end

  def active=(active_input)    #setter method
    @active = active_input
  end

end

employee1 = Employee.new({first_name: "Manila", last_name: "Carlos", active: true})
# employee1.print_info

employee2 = Employee.new({first_name: "Danilo", last_name: "Carter", salary: 70000, active: false})

p employee1.full_name
p employee2.full_name

one_hundred_employees = []

100.times do
  full_name = Faker::Name.name.split(" ")
  if full_name[0].include?(".")
    full_name.shift
  end
  one_hundred_employees << Employee.new({first_name: full_name[0], last_name: full_name[1]})
end

one_hundred_employees.each do |emp|
  p emp.full_name
end


# Checking for Mr., Mrs., Dr., 
# 5.times do
#   full_name = Faker::Name.name.split(" ")
#   if full_name[0].include?(".")
#     full_name.shift
#   end
#   p full_name[1]
# end







