require 'game'

describe Game do
  let(:go_manager) { double :go_manager }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:name) { 'Ben' }
  subject(:game) { described_class.new(player1, player2, go_manager) }

  it 'expects game.winner to return a player' do
    expect(go_manager).to receive(:winner).and_return(:player1)
    game.winner
  end

  it 'expects game.winner to return a player1' do
    expect(go_manager).to receive(:winner).and_return(:player1)
    game.winner
  end

  it 'expects game.player1 to return a player1' do
    expect(game.player1).to eq(player1)
  end

  it 'expects game.player2 to return a player2' do
    expect(game.player2).to eq(player2)
  end

  it 'expects Game.new_game to return a game' do
    expect(Game.new_game(player1, player2, go_manager)).to be_a Game
  end

  it 'expects Game.game_instance to return a game' do
    game = Game.new_game(player1, player2, go_manager)
    expect(Game.game_instance).to eq game
  end
end
