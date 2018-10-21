require_relative 'rules'
require 'json'

class RulesFactory
  attr_reader :rules_class
  def initialize(rules_class = Rules)
    @rules_class = rules_class
  end

  def create_rules(filename)
    file = File.read(filename)
    rules_hash = JSON.parse(file, :symbolize_names => true)
    @rules_class.new(rules_hash)
  end
end
