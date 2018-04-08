describe Game do
  
  subject(:game) { described_class.new '' }

  it 'is initialized with a players name' do
    expect(Game.new('Anna').player).to eq 'Anna'
  end

  describe '.get_game' do
    it 'returns the Game instance' do
      game = Game.new 'alpha'
      expect(Game.get_game).to eq game
    end
  end
 
  describe '#check_winner' do
    it 'calculates winner' do
      allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
      expect(subject.check_winner('rock').final).to eq 'You chose rock. Computer chose scissors. You win!'
    end
  end
end
    
