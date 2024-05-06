# Calculate Age

require 'date'

class AgeCalculator
  def self.calculate_age(birth_date, present_date)
    birth_date = Date.strptime(birth_date, '%d/%m/%Y')
    present_date = Date.strptime(present_date, '%d/%m/%Y')

    years = present_date.year - birth_date.year
    months = present_date.month - birth_date.month
    days = present_date.day - birth_date.day

    if months < 0
      years -= 1
      months += 12
    end

    if days < 0
      months -= 1
      # This approach ensures that the number of days in each month is accurately accounted for
      days += Date.new(present_date.year, present_date.month, -1).day
    end

    return { years: years, months: months, days: days }
  end
end

#Input : 
birth_date = "07/09/1996"
present_date = "07/12/2017"
#Output : Present Age = Years: 21  Months: 3  Days: 0

#Input : 
birth_date2 = "06/02/1995" 
present_date2 = "06/05/2024"
#Output : Present Age = Years: 29  Months: 3  Days: 0

age = AgeCalculator.calculate_age(birth_date2, present_date2)
puts "Present Age = Years: #{age[:years]}  Months: #{age[:months]}  Days: #{age[:days]}"
