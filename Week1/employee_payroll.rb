class Employee
	attr_reader :name, :email

	def initialize(name, email)
		@name = name
		@email = email
	end

end


class HourlyEmployee < Employee
	attr_reader :rate
	attr_accessor :total

	def initialize(name, email, rate, total)
		super(name, email)
		@rate = rate
		@total = total
	end	
end	

class SalariedEmployee < Employee
	attr_reader :anual
	def initialize(name, email, anual)
		super(name, email)
		@anual = anual
	end	
	def calculate_salary
		@anual/52
	end	
end

class MultiPaymentEmployee < Employee
	attr_reader :anual, :rate
	attr_accessor :total
	def initialize(name, email, anual, rate, total)
		super(name, email)
		@anual = anual
		@rate = rate
		@toal = total
	end
end

class Payroll
	attr_reader :employees
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
  	total = 0
  	@employees.each do |el|
  		weekly = el.calculate_salary - (el.calculate_salary*0.18)
  		puts "#{el.name} earns #{calculate_salary} per week"
  		total += el.calculate_salary
  	end
  	

end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

jony = HourlyEmployee.new('Jony', 'jony@gmail.com', 15, 40)

santi = HourlyEmployee.new('Santi', 'santi@gmail.com', 15, 35)

employees = [josh, nizar, ted, jony, santi]
payroll = Payroll.new(employees)
payroll.pay_employees



puts payroll.employees[1].name
