require 'game_manager'

describe Game_manager do

  it 'should respond to method' do
    expect(subject).to respond_to(:new_round)
  end

  it 'given a hash of two choices, should determine a winner' do
    $players = {"1" => "Alex", "2" => "Em"}
    $choices = {"1" => "paper", "2" => "rock"}
    game = Game_manager.new
    expect(game.new_round).to eql("Alex")
  end

  # it 'cpu method should generate random choice' do
  #
  # end



end
