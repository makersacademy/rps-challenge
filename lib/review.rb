require "csv"

class Review

attr_reader :results

  def initialize(name)
    @results_arr
    @results =''
    @name = name
  end

  def self.create(name)
    @review = Review.new(name)
  end
  def print_values
    @results_arr.each{ |row|
      @results += " #{row[0]} played #{row[1]} and the computer played #{row[2]} #{row[3]}\n" if row[0] == @name
      }
  end

  def values
      @results_arr = CSV.parse(File.read('database.csv'))
  end
end
