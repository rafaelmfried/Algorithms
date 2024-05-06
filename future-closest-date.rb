require 'date'

class ClosestDateFinder
  def self.find_closest_dates(array, queries)
    # Format the date array
    dates = array.map { |date| Date.strptime(date, '%d/%m/%Y') }
    result = []

    queries.each do |query|
      # Format the query date array
      query_date = Date.strptime(query, '%d/%m/%Y')
      closest_date = nil
      # Use a large number as a min_diff
      min_diff = Float::INFINITY

      dates.each do |date|
        if date > query_date
          diff = (date - query_date).abs
          if diff < min_diff
            min_diff = diff
            closest_date = date
          end
        end
      end

      result << (closest_date ? closest_date.strftime('%d/%m/%Y') : -1)
    end

    return result
  end
end

#Input: 
array = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
queries = ["23/3/4345", "12/3/2"]
#Output:
#23/5/56645
#4/12/233
#Explanation:
#Query 1: The closest date after “23/3/4345” is “23/5/56645”.
#Query 2: The closest date after “12/3/2” is “4/12/233”.

#Input: 
array2 = ["22/4/1233", "4/12/233", "1/3/633", "23/5/56645"]
queries2 = ["4/4/34234234"]
#Output: -1

puts ClosestDateFinder.find_closest_dates(array2, queries2)
