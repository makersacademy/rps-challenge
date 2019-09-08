require_relative './lib/repository'
require_relative './lib/random_ai_move'
require_relative './lib/rules'
require_relative './lib/id_generator'

class AppContext
  attr_accessor :repository, :rules, :ai_instance, :id_generator

  def self.create
    @instance = AppContext.new
  end

  def self.instance
    @instance || create
  end

  private

  def initialize
    @repository = Repository.new
    @rules = Rules.new
    @ai_instance = RandomAiMove.new
    @id_generator = IdGenerator.new
  end
end