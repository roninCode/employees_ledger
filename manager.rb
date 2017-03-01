require 'faker'

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active 


  def initialize(input_options)
    @first_name = input_options[:first_name].nil? ? input_options[:first_name] = "Rodriguez" : input_options[:first_name]
    @last_name = (input_options[:last_name]).nil? ? input_options[:last_name] = "Sugarman" : input_options[:last_name]
    @salary = input_options[:salary].nil? ? input_options[:salary] = 0 : input_options[:salary]
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

employee1 = Employee.new({first_name: "Manila", last_name: "Carlos", salary: 10000, active: true})
# employee1.print_info

employee2 = Employee.new({first_name: "Danilo", last_name: "Carter", salary: 70000, active: false})

# p employee1.full_name
# p employee2.full_name

# one_hundred_employees = []

# 100.times do
#   full_name = Faker::Name.name.split(" ")
#   if full_name[0].include?(".")
#     full_name.shift
#   end
#   one_hundred_employees << Employee.new({first_name: full_name[0], last_name: full_name[1]})
# end

# one_hundred_employees.each do |emp|
#   p emp.full_name
# end



class Manager < Employee
  #Like Employee class, but can send reports too!
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    p "I will send the report now"
    #blah blah blah
    p "hope you like it"
  end
  

  #  loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method)
  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end  
  # Create a method in the Manager class called fire_all_employees that 
  #loops through each of the manager’s employees and changes their active status to false.


end
joe_bob = Manager.new({first_name: "Joe", last_name: "Bob", salary: 83849, active: true, employees: [employee1, employee2] })
p joe_bob
joe_bob.send_report
p joe_bob.full_name
p joe_bob.give_annual_raise
p employee1.salary
joe_bob.give_all_raises
p employee1.salary
joe_bob.fire_all_employees
p employee1.active
p employee2.active



