require 'game'

RSpec.describe Game do
  # let(:user) { double :player, name: 'Sandra', choice: 'scissors' }
  # let(:computer) { double :computer, name: 'Computer', choice: 'paper' }
  # subject(:game) { Game.new(:user, :computer) }

  it 'returns the computer choice' do
    user = double :player
    computer = double :computer, choice: 'paper'
    game = Game.new(user, computer)
    expect(game.computer.choice).to eq 'paper'
  end

  it 'returns the user choice' do
    user = double :player, choice: 'scissors'
    computer = double :computer
    game = Game.new(user, computer)
    expect(game.user.choice).to eq 'scissors'
  end

  it 'returns the computer name' do
    user = double :player
    computer = double :computer, name: 'Computer'
    game = Game.new(user, computer)
    expect(game.computer.name).to eq 'Computer'
  end

  it 'returns the user name' do
    user = double :player, name: 'Sandra'
    computer = double :computer
    game = Game.new(user, computer)
    expect(game.user.name).to eq 'Sandra'
  end

  it "returns true when the user wins" do
    user = double :player, name: 'Sandra', choice: 'scissors'
    computer = double :computer, name: 'Computer', choice: 'paper'
    game = Game.new(user, computer)
    expect(game.winner).to eq true
  end

  it 'returns false when the computer wins' do
    user = double :player, name: 'Sandra', choice: 'scissors'
    computer = double :computer, name: 'Computer', choice: 'rock'
    game = Game.new(user, computer)
    expect(game.winner).to eq false
  end

  it 'returns nil when there is a drawer' do
    user = double :player, name: 'Sandra', choice: 'rock'
    computer = double :computer, name: 'Computer', choice: 'rock'
    game = Game.new(user, computer)
    expect(game.winner).to eq nil
  end
end
