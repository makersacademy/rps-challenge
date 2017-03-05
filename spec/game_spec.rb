require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new(Player.new('Alex')) }

  context 'options' do
    it 'keeps all the options' do
      expect(subject.options).to eq [:rock, :paper, :scissors]
    end

    it 'declares_winner' do
      expect(["Alex", "computer", "nobody"].include?(subject.declare_winner('Rock'))).to eq true
    end
  end

end
