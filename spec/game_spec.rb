describe Game do
  let(:p1) { double :p1 }
  let(:p2) { double :p2 }
  let(:choice) { double :choice }
  let(:game) { described_class.create(p1, p2) }
  
  it 'initializes with 2 new players' do
    expect(game.player1.name).to eq(p1)
    expect(game.player2.name).to eq(p2)
  end

  describe '#switch_turns' do
    it 'outputs different player when #switch_turn is called' do
      expect(game.current_turn).to eq(game.player1)
      game.switch_turn
      expect(game.current_turn).to eq(game.player2) 
    end
  end

  describe '#both_turns_complete?' do
    it 'checks that both games are complete' do
      game.choices << choice
      expect(game.both_turns_complete?).to eq(false)
      game.choices << choice
      expect(game.both_turns_complete?).to eq(true)
    end
  end

  describe '#winner' do
    it 'selects winner based on last 2 elements in array' do
      game.choices << "Rock"
      game.choices << "Scissors"
      expect(game.winner).to eq("Rock beats Scissors...#[Double :p1] wins!")
    end
  end

  describe '#create' do
    it 'creates a new Game instance' do
      expect(game).not_to eq(Game.create(p1, p2))
    end
  end

  describe '#instance' do
    it 'returns the instance of @game' do
      expect(game).to eq(Game.instance)
    end
  end

  describe '#current_turn' do
    it 'describes whose turn it is' do
      expect(game.current_turn).to eq(game.player1)
    end
  end

end
