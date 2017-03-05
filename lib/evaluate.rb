require 'csv'
require_relative 'logic_item'
class Evaluate

  attr_reader :logic_table

  def initialize(item_class = LogicItem, rules_file)
    @logic_table= []
    @item_class = item_class
    @rules_file = rules_file
    populate_table
  end

  def get_result(p1,p2)
    result = @logic_table.find {|logic| logic.p1 == p1 && logic.p2 == p2}.result
  end

  def get_verb(p1,p2)
    result = @logic_table.find {|logic| logic.p1 == p1 && logic.p2 == p2}.verb
  end

  private

  def populate_table
    CSV.foreach(File.path(@rules_file), headers: true) do |row|
      add_logic_item(@item_class.new(p1: row["p1"], p2: row["p2"], result: row["result"].to_i, verb: row['verb']))
    end
  end

  def add_logic_item(item)
    @logic_table << item
  end

end
