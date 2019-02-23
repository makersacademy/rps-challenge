require './models/game.rb'

describe 'When new game is created with player name, ' do
  let(:player_name) { 'Simon' }

  # using before each instead of let to create game
  # as had issues with execution order
  before(:each) do
    @game = Game.create(player_name: player_name)
  end

  it 'should store player name' do
    expect(@game.player_name).to eq(player_name)
  end

  it 'should store new game instance as class instance variable' do
    expect(Game.current_game).to eq(@game)
  end

  describe 'And play is called with a rock options' do
    it 'should return true if computer selects scissors' do
      allow(@game).to receive(:rand).and_return(2)

      expect(@game.play('rock')).to be true
    end

    it 'should return false if computer selects paper' do
      allow(@game).to receive(:rand).and_return(1)

      expect(@game.play('rock')).to be false
    end
  end
end