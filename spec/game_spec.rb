require 'game'

describe Game do
    subject(:game) { described_class.new("Courtney", Computer.new)}
    let(:player) { double :player }
    let(:computer) { double :computer }

    it 'test that when player is called player is returned' do
      expect(game.player).to eq "Courtney"
    end

    # it 'test that users choice of object and computers'

    it 'tests that an array of users and computers choice is returned' do
      allow(:player).to receive(:users_choice) { :rock }
      allow(:computer).to receive(:choice_made) { :scissors }
      expect(game.choices).to eq [:rock, :scissors]
    end


end
