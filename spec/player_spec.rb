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
  end

  describe '#move' do
    it "returns the move selected" do
      player.play(selected_move)
      expect(player.move).to eq selected_move
    end
  end
end
