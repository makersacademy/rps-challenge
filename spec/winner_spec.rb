describe Winner do
  describe '#the_winner_is' do
    let(:computer) { double :computer }
    let(:player_1) { double :player }

    it 'reveals who the winner is - player' do
          allow(computer).to receive(:move).and_return('rock')
      allow(player_1).to receive(:weapon).and_return('paper')
      expect(subject.the_winner_is(player_1, computer)).to eq player_1
    end

    it 'reveals who the winner is - computer' do
          allow(computer).to receive(:move).and_return('rock')
      allow(player_1).to receive(:weapon).and_return('scissors')
      expect(subject.the_winner_is(player_1, computer)).to eq computer
    end
  end
end
