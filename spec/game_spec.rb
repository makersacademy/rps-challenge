describe Game do
  subject(:game) { described_class.new(Player.new('Reena')) }

  describe '#play' do

    it 'tells if you have won' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      expect(game.play("rock")).to eq :win
    end

    it 'tells if you have lost' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.play("scissors")).to eq :lose
    end

    it 'tells if it is a draw situation' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      expect(game.play("rock")).to eq :draw
    end
  end
end

  
