require 'csv'

class Evaluate

  attr_reader :logic_table

  def initialize(item_class = LogicItem)
    @logic_table= []
    @item_class = item_class
    populate_table
  end

private

  def populate_table
    CSV.foreach(File.path(logic_file_path), headers: true) do |row|
      add_logic_item(@item_class.new(p1: row["p1"], p2: row["p2"], result: row["result"]))
    end
  end

  def add_logic_item(item)
    @logic_table << item
  end

  def logic_file_path
    File.expand_path("../../public/logictable.csv", __FILE__)
  end

end
