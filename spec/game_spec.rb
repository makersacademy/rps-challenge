require 'game'

describe Game do
  let(:testgame) { Game.new("Test") }

  it 'instantiates with a player' do
    expect(testgame).to be_instance_of Game
  end

  it 'instantiates with a random computer_choice' do
    srand(4)
    expect(testgame.computer_choice).to eq "Scissors"
  end
end
