require 'game'

describe Game do

  it 'calculates the move of the computer' do
    game = Game.new("Imogen")
    allow(Kernel).to receive(:rand).and_return('Rock')
    expect(game.computer_choice).to eq 'Rock'
  end

end
