require 'player'

describe Player do
  subject(:alex)        { described_class.new("Alex", "Rock") }
  subject(:ai_overlord) { described_class.new("AI Overlord", "Scissors") }

  describe '#name' do
    context 'player_1' do
      it 'returns player_1 name' do
        expect(alex.name).to eq "Alex"
      end
    end

    context 'player_2' do
      it 'returns player_2 name' do
        expect(ai_overlord.name).to eq "AI Overlord"
      end
    end
  end

  describe '#weapon' do
    context 'player_1' do
      it 'returns player_1 weapon' do
        expect(alex.weapon).to eq "Rock"
      end
    end

    context 'player_2' do
      it 'returns player_2 weapon' do
        expect(ai_overlord.weapon).to eq "Scissors"
      end
    end

    context "#ai_choose_weapon" do
      it "chooses a weapon at random" do
        allow(Kernel).to receive(:rand).and_return(1)
        allow(ai_overlord).to receive(:ai_choose_weapon).and_return(1)
        expect(ai_overlord.weapon).to eq "Paper"
      end
    end
  end

end
