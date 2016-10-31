class Employee
	attr_reader :name, :email
	def initialize(name,email)
		@name = name
		@email = email
	end
end
 
class HourlyEmployee < Employee
	attr_reader :rate, :total
	def initialize(name,email,rate,total)
		super(name,email)
		@rate = rate
		@total = total
	end
	def calculate_salary
		@rate * @total
	end
end


class SalariedEmployee < Employee
	attr_reader :anual
	def initialize(name,email,anual)
		super(name,email)
		@anual = anual
	end
	def calculate_salary
		@anual/52
	end
end

class MultipaymentEmployee < Employee
	attr_reader :anual, :rate, :total
	def initialize(name,email,anual,rate,total)
		super(name,email)
		@anual = anual
		@rate = rate
		@total = total
	end
	def calculate_salary
		total_week = 0
		fixed = @anual/52
		total_hours_to_pay = @total - 40
		variable = @rate * total_hours_to_pay
		total_week = fixed +  variable
	end
end

class Payroll
	attr_reader :employees
	def initialize(employees)
		@employees = employees
	end
	def pay_employess
		total = 0
		@employees.each do |el|
			weekly = el.calculate_salary - (el.calculate_salary*0.18)
			puts "#{el.name} earns #{weekly} per week"
			send_payment_notification(el.name)
			total += el.calculate_salary
		end
		puts "Total payroll is #{total}"
	end
	def send_payment_notification(employee)
		puts "email sent to #{employee}"
	end
end


johnny = HourlyEmployee.new("johnny", "johnny@gmail.com",15,40)

puts johnny
puts johnny.name

santi = SalariedEmployee.new("santi","santi@gmail.com",60000)

puts santi
puts santi.name

jose = MultipaymentEmployee.new("jose","jose@gmail.com",20000,15,70)

puts jose
puts jose.name
employees = [johnny,santi,jose]
payroll = Payroll.new(employees)
payroll.pay_employess 

