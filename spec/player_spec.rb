require 'player'

describe Player do
  subject(:alex)        { described_class.new("Alex", "Rock") }
  subject(:ai_overlord) { described_class.new("AI Overlord", "Rock") }

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
        expect(ai_overlord.weapon).to eq "Rock"
      end
    end

    context "#ai_choose_weapon" do
      it "chooses a weapon at random" do
        #allow(ai_overlord).to receive(:ai_choose_weapon).and_return("Paper")
        ai_overlord.ai_choose_weapon
        expect(ai_overlord.weapon).to eq "Paper"
      end
    end
  end

end
