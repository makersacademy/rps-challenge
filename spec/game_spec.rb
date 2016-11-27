require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player){ double(:player) }

  it 'should test that game can be initialized with player' do
    expect(game.player).to eq player
  end

  it 'should declare player as winner' do
    allow(player).to receive(:choice).and_return('Rock')
    allow(player).to receive(:name).and_return('Player')
    allow(game).to receive(:game_choice).and_return("Scissors")
    expect(game.decide_winner(player.choice, game.game_choice)).to eq 'Player'
  end

  it 'should declare Game as winner' do
    allow(player).to receive(:choice).and_return('Scissors')
    allow(game).to receive(:game_choice).and_return("Rock")
    expect(game.decide_winner(player.choice, game.game_choice)).to eq("Player 2")
  end


end
