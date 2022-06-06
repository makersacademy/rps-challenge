require 'game'

RSpec.describe Game do
  # let(:user) { double :player, name: 'Sandra', choice: 'scissors' }
  # let(:computer) { double :computer, name: 'Computer', choice: 'paper' }
  # subject(:game) { Game.new(:user, :computer) }

  it 'returns the names of each player' do
    player1 = double :player, name: 'Elspeth'
    player2 = double :player, name: 'Cuddle'
    game = Game.new(player1, player2)
    expect(game.player1.name).to eq 'Elspeth'
    expect(game.player2.name).to eq 'Cuddle'
  end

  it "returns the players' choices" do
    player1 = double :player, choice: 'scissors'
    player2 = double :player, choice: 'rock'
    game = Game.new(player1, player2)
    expect(game.player1.choice).to eq 'scissors'
    expect(game.player2.choice).to eq 'rock'
  end

  it "returns true when player 1 wins" do
    player1 = double :player, name: 'Sandra', choice: 'scissors'
    player2 = double :player, name: 'Cuddles', choice: 'paper'
    game = Game.new(player1, player2)
    expect(game.winner).to eq true
  end

  it 'returns false when the player 2 wins' do
    player1 = double :player, name: 'Sandra', choice: 'scissors'
    player2 = double :player, name: 'Cuddles', choice: 'rock'
    game = Game.new(player1, player2)
    expect(game.winner).to eq false
  end

  it 'returns nil when there is a drawer' do
    player1 = double :player, name: 'Sandra', choice: 'rock'
    player2 = double :player, name: 'Cuddles', choice: 'rock'
    game = Game.new(player1, player2)
    expect(game.winner).to eq nil
  end
end
