require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
   let(:player) { double :players }
   let(:computer) { double :players }

  describe '#players' do
    scenario 'expect array to equal two players' do
    expect(game.players).to eq [player, computer]
    end
  end 
end