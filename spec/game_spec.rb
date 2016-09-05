require 'spec_helper'
require 'game'

describe Game do
  subject(:game){described_class.new}

  it 'returns -1 points for player when beaten by computer' do
    expect(game.player_points("lizard","rock")).to eq -1
  end

  it 'returns -1 points for computer when beaten by player' do
    expect(game.computer_points("rock", "lizard")).to eq -1
  end

  it 'leader method shows who ever has the highest score' do
    pending "hmmmmmmmm"
    allow(game).to_receive(computer.score).and_return(5)
    allow(game).to_receive(player.score).and_return(4)
    expect(game.leader).to eq game.computer.name
  end



end
