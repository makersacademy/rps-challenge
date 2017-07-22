require 'computer'

describe Computer do
  subject(:computer) { described_class.new("Computer") }

  describe 'initialisation' do
    it 'sets a name' do
      expect(computer.name).to eq "Computer"
    end
  end

  describe '#weapon' do
    it 'can choose rock' do
      # Assuming at most 100 tries are sufficient to get rock that has 33% odds
      weapon = nil
      100.times do
        weapon = computer.weapon
        break if weapon == :rock
      end
      expect(weapon).to eq :rock
    end

    it 'can choose paper' do
      # Assuming at most 100 tries are sufficient to get paper that has 33% odds
      weapon = nil
      100.times do
        weapon = computer.weapon
        break if weapon == :paper
      end
      expect(weapon).to eq :paper
    end

    it 'can choose scissors' do
      # Assuming at most 100 tries are sufficient to get scissors that has 33% odds
      weapon = nil
      100.times do
        weapon = computer.weapon
        break if weapon == :scissors
      end
      expect(weapon).to eq :scissors
    end
  end

end
