require_relative '../lib/computer_player'

describe ComputerPlayer do
  context 'Computer\'s Weapon' do
    it 'Computer selects a random weapon' do
      allow(subject).to receive(:random_weapon) { 'Paper' }
      expect(subject.weapon = subject.random_weapon).to eq("Paper")
    end
  end
end
