require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
   let(:player) { double :players }
   let(:computer) { double :players }

  describe '#players' do
    scenario 'expect array to equal two players' do
    expect(game.player).to eq player
    expect(game.computer).to eq computer
    end
  end 
end