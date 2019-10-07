require_relative 'choice'
require 'json'

class ChoiceReader

  def initialize(choice_class = Choice)
    @choice_class = choice_class
  end

  def create_choice(filename)
    file = File.read(filename)
    move_hash = JSON.parse(file)
    make_move_objects(move_hash)
  end

  def make_move_objects(hash)
    hash.map do |item, value|
      name = item
      win = value['win']
      img = value['img']
      @choice_class.new(name, win, img)
    end
  end

end
