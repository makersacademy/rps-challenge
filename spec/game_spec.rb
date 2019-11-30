require 'game'

RSpec.describe Game do
  let(:sam) { double :player, name: 'Sam', hand: nil }
  let(:test_opponent) { double :computer, hand: ['Rock', 'Paper', 'Scissors'].sample }
  let(:test_game) { Game.new(sam, test_opponent) }

  it 'can be assigned a player' do
    expect(test_game.current_player).to be sam
  end

  it 'has an inbuilt opponent' do
    expect(test_game.opponent).to be test_opponent
  end
end
