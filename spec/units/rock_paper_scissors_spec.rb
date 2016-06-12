describe RockPaperScissors do

  let(:player_2) { double(:ai) }
  let(:player_1) { double(:player_1) }
  subject(:rock_and_co) { described_class.new(player_1, player_2)}

  describe '#outcome' do

    context 'when weapons are the same' do
  
      it 'returns 0 (P)' do
        allow(player_1).to receive(:weapon).and_return('P')
        allow(player_2).to receive(:weapon).and_return('P')
        expect(subject.outcome).to eq 0
      end 

      it 'returns 0 (L)' do
        allow(player_1).to receive(:weapon).and_return('L')
        allow(player_2).to receive(:weapon).and_return('L')
        expect(subject.outcome).to eq 0
      end 
    end 

  
    context 'when player 2 has winner weapon' do

      it 'returns positive n (RvP)' do
        allow(player_1).to receive(:weapon).and_return('R')
        allow(player_2).to receive(:weapon).and_return('P')
        expect([1,2]).to include(subject.outcome)
      end 

      it 'returns positive n (SPvP)' do
        allow(player_1).to receive(:weapon).and_return('SP')
        allow(player_2).to receive(:weapon).and_return('P')
        expect([1,2]).to include(subject.outcome)
      end 
    end


    context 'when player 1 has winner weapon' do

      it 'returns negative n (SvP)' do
        allow(player_1).to receive(:weapon).and_return('S')
        allow(player_2).to receive(:weapon).and_return('P')
        expect([-1,-2]).to include(subject.outcome)
      end 

      it 'returns negative n (RvL)' do
        allow(player_1).to receive(:weapon).and_return('R')
        allow(player_2).to receive(:weapon).and_return('L')
        expect([-1,-2]).to include(subject.outcome)
      end 

    end
  end
end
