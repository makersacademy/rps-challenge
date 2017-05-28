require 'game'

describe Game do
  subject(:game) { described_class.new(player, opponent) }
  let(:player) { double(:player) }
  let(:opponent) { double(:opponent) }
  let(:rules) { double(:rules) }

  it 'knows who is in the game' do
    expect(game.players).to eq [player, opponent]
  end

  it 'knows what the player chose' do
    allow(player).to receive(:choose_hand).with('Rock').and_return('Rock')
    allow(player).to receive(:choice).and_return('Rock')
    allow(opponent).to receive(:choose_hand).and_return('Scissors')
    game.play_a_round('Rock')
    expect(game.players[0].choice).to eq 'Rock'
  end

  it 'decides who the winner is' do
    allow(player).to receive(:choose_hand).with('Rock').and_return('Rock')
    allow(player).to receive(:choice).and_return('Rock')
    allow(opponent).to receive(:choose_hand).and_return('Scissors')
    allow(opponent).to receive(:choice).and_return('Scissors')
    allow(rules).to receive(:check_rules).and_return(game.players[0])
    game.play_a_round('Rock')
    expect(game.winner).to eq game.players[0]
  end
end
