require './model/game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2 = Computer.new) }
  let(:player_1) { double :player }
  let(:cpu) { Computer.new }

  describe '#outcome' do
    it 'gives the result of draw' do
      allow_any_instance_of(Computer).to receive(:move).and_return("Scissor")
      expect(game.outcome("Scissor")).to eq "It's a Draw"
    end
    it 'gives the result of Player 1 win' do
      allow_any_instance_of(Computer).to receive(:move).and_return("Paper")
      expect(game.outcome("Scissor")).to eq "You won"
    end
    it 'gives the result of Player 2 won' do
      allow_any_instance_of(Computer).to receive(:move).and_return("Rock")
      expect(game.outcome("Scissor")).to eq "CPU won"
    end
  end
end
