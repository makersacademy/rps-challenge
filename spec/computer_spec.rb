require 'computer'

RSpec.describe Computer do
  subject(:computer) { described_class.new }

  Game::WEAPONS = [:rock, :paper, :scissors]

  describe '#name' do
    it 'returns the name' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#weapon_choice' do
    it 'returns :rock' do
      allow(Game::WEAPONS).to receive(:sample) { :rock }
      expect(computer.weapon_choice).to eq :rock
    end

    it 'returns :paper' do
      allow(Game::WEAPONS).to receive(:sample) { :paper }
      expect(computer.weapon_choice).to eq :paper
    end

    it 'returns :scissors' do
      allow(Game::WEAPONS).to receive(:sample) { :scissors }
      expect(computer.weapon_choice).to eq :scissors
    end
  end
end
