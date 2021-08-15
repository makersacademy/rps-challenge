require 'player'

describe Player do

  context 'computer player' do

    subject { described_class.new("") }

    it 'creates a computer opponent name if not passed name' do
      expect(subject.name).to eq(Player::COMPUTER_NAME)
    end

    context '#generate_weapon' do
      
      it 'returns a random weapon - rock test' do
        srand 1
        expect(subject.generate_weapon).to eq('Rock')
      end

      it 'returns a random weapon - paper test' do
        srand 2
        expect(subject.generate_weapon).to eq('Paper')
      end

      it 'returns a random weapon - scissors test' do
        srand 4
        expect(subject.generate_weapon).to eq('Scissors')
      end

    end
  end

  context 'human player' do

    subject { described_class.new('Ed') }

    it "returns the player's name" do
      expect(subject.name).to eq("Ed")
    end

    it "player weapon default is nil" do
      expect(subject.weapon).to eq(nil)
    end

    it "can change player weapon" do
      subject.choose("Rock")
      expect(subject.weapon).to eq("Rock")
    end

  end
end
