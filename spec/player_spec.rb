RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end

require 'player'

describe Player do

  let(:name){ "Player1" }
  let(:opponent_name){ "Opponent" }
  let(:opponent){described_class.new(name:opponent_name)}
  subject(:player){ described_class.new(name: name) }

  let(:selected_move){double :Move}

  describe '#initialize' do
    it { expect(player.name).to eq name}
    it { expect(player.wins).to eq 0}
  end

  describe '#move' do
    it "returns the move selected" do
      player.play(selected_move)
      expect(player.move).to eq selected_move
    end
  end

  describe '#win!' do
    it 'increments wins by 1' do
      expect{player.win!}.to change{player.wins}.by(1)
    end
  end
end
