require 'computer'

describe Computer do
  subject(:computer) { described_class.new("Computer") }

  describe 'initialisation' do
    it 'sets a name' do
      expect(computer.name).to eq "Computer"
    end

    it 'has no weapon' do
      expect(computer.weapon).to be_nil
    end
  end

  describe '#weapon=' do
    it 'can choose rock' do
      # Assuming at most 100 tries are sufficient to get rock that has 33% odds
      100.times do
        computer.weapon = nil
        break if computer.weapon == :rock
      end
      expect(computer.weapon).to eq :rock
    end

    it 'can choose paper' do
      # Assuming at most 100 tries are sufficient to get paper that has 33% odds
      100.times do
        computer.weapon = nil
        break if computer.weapon == :paper
      end
      expect(computer.weapon).to eq :paper
    end

    it 'can choose scissors' do
      # Assuming at most 100 tries are sufficient to get scissors that has 33% odds
      100.times do
        computer.weapon = nil
        break if computer.weapon == :scissors
      end
      expect(computer.weapon).to eq :scissors
    end

    it 'fails for any other weapon' do
      expect { computer.weapon = :spock }.to raise_error "Invalid weapon"
    end
  end
end
