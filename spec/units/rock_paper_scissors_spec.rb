describe RockPaperScissors do

  let(:player_2) { double(:ai) }
  let(:player_1) { double(:player_1) }
  subject(:rock_and_co) { described_class.new(player_1, player_2)}

  describe '#outcome' do

   context 'when weapons are the same' do
  
    before do
        allow(player_1).to receive(:weapon).and_return('P')
        allow(player_2).to receive(:weapon).and_return('P')
    end

      it 'returns 0 (P)' do
        expect(subject.outcome).to eq 0
      end 

      it 'returns 0 (S)' do
        expect(subject.outcome).to eq 0
      end 

      it 'returns 0 (R)' do
        expect(subject.outcome).to eq 0
      end 
    end 

  
    context 'when player 2 has winner weapon' do

      before do 
        allow(player_1).to receive(:weapon).and_return('R')
        allow(player_2).to receive(:weapon).and_return('P')
      end

      it 'returns 1 (RvP)' do
        expect(subject.outcome).to eq 1
      end 

      it 'returns 1 (PvS)' do
        expect(subject.outcome).to eq 1
      end 

      it 'returns 1 (SvR)' do
        expect(subject.outcome).to eq 1
      end
    end


    context 'when player 1 has winner weapon' do

      before do
        allow(player_1).to receive(:weapon).and_return('S')
        allow(player_2).to receive(:weapon).and_return('P')
      end

      it 'returns -1 (SvP)' do
        expect(subject.outcome).to eq -1
      end 

      it 'returns -1 (PvR)' do
        expect(subject.outcome).to eq -1
      end 

      it 'returns -1 (RvS)' do
        expect(subject.outcome).to eq -1
      end 
    end
  end
end
