require 'game.rb'

describe Game do
  subject(:game) { Game.new(player, computer.weapon) }
  let(:player) { double :player, weapon: 'PAPER' }
  let(:computer) { double :computer, weapon: 'SCISSORS' }
  
  it 'the computer wins' do
    expect(game.result).to eq 'Computer won!'
  end
end

describe Game do
  subject(:game) { Game.new(player, computer.weapon) }
  let(:player) { double :player, weapon: 'ROCK' }
  let(:computer) { double :computer, weapon: 'SCISSORS' }

  it 'the player wins' do
    expect(game.result).to eq 'You win!'
  end
end

describe Game do
  subject(:game) { Game.new(player, computer.weapon) }
  let(:player) { double :player, weapon: 'PAPER' }
  let(:computer) { double :player, weapon: 'PAPER' }
  
  it 'it is a draw' do
    expect(game.result).to eq 'It is a draw!'
  end
end
