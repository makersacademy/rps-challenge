require 'game'

describe Game do

  let(:new_player) { double }
  let(:subject) { described_class.new(new_player) }

  describe "#initialize" do
    it 'creates a player instance' do
      expect(subject).to respond_to(:player)
    end
  end

end
