require 'game'

describe Game do
  subject(:game) { described_class.new("Al", "Rock", "Paper")}
  
  it 'should return the winner of the game' do
    expect(game.check_winner).to eq "Computer"
  end

end