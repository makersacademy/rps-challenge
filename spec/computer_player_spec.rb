require 'computer_player'

describe ComputerPlayer do
  describe '#random_weapon_classic' do
    it 'picks a random classic weapon' do
      srand(67811)
      expect(subject.random_weapon_classic).to eq "Rock"
    end

    it 'can pick rock' do
      srand(67811)
      expect(subject.random_weapon_classic).to eq "Rock"
    end

    it 'can pick paper' do
      srand(9999999)
      expect(subject.random_weapon_classic).to eq "Paper"
    end

    it 'can pick scissors' do
      srand(504)
      expect(subject.random_weapon_classic).to eq "Scissors"
    end
  end

  describe '#random_weapon_ls' do
    it 'picks a random lizard spock weapon' do
      srand(67811)
      expect(subject.random_weapon_ls).to eq "Rock"
    end

    it 'can pick rock' do
      srand(9999999)
      expect(subject.random_weapon_ls).to eq "Rock"
    end

    it 'can pick paper' do
      srand(21209)
      expect(subject.random_weapon_ls).to eq "Paper"
    end

    it 'can pick scissors' do
      srand(237893)
      expect(subject.random_weapon_ls).to eq "Scissors"
    end

    it 'can pick lizard' do
      srand(80920)
      expect(subject.random_weapon_ls).to eq "Lizard"
    end

    it 'can pick spock' do
      srand(83930)
      expect(subject.random_weapon_ls).to eq "Spock"
    end
  end
end
