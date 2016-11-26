require 'game'

describe Game do
    subject(:game) { described_class.new(player, computer)}
    let(:player) { double(:player) }
    let(:computer) { double(:computer) }

    it 'test that when player is called player is returned' do
      expect(game.player).to eq player
    end

    it 'test that computer is initalized with game' do
      expect(game.computer).to eq computer
    end 

    it 'tests that an array of users and computers choice is returned' do
      allow(player).to receive(:users_choice){ :rock }
      allow(computer).to receive(:choice_made) { :scissors }
      game.choice
      expect(game.choices).to eq [:rock, :scissors]
    end
end
