require 'game'

describe Game do

  let(:new_player) { double }
  let(:opponent) { double }
  let(:subject) { described_class.new(new_player, opponent) }

  describe "#initialize" do
    it 'creates a player' do
      expect(subject).to respond_to(:player)
    end
  end

end
