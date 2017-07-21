require 'game'

describe Game do
  subject(:game) { described_class.new(name) }
  let(:name) { "Ryan" }

  before :each do
    srand(67809)
  end

  it 'should store a name for the player' do
    expect(game.current_player.name).to eq name
  end
  context 'win, lose draw' do
    it 'should register win for winning combinations of rps' do
      game.choose("rock", "scissors")
      expect(game.result).to eq :win
      game.choose("scissors", "paper")
      expect(game.result).to eq :win
      game.choose("paper", "rock")
      expect(game.result).to eq :win
    end
    it 'should register lose for non-winning combinations of rps' do
      game.choose("scissors", "rock")
      expect(game.result).to eq :lose
    end
    it 'should register a draw for the same choices of rps' do
      game.choose("scissors", "scissors")
      expect(game.result).to eq :draw
    end
  end
  describe '#choose' do
    it 'should set choice' do
      game.choose("rock")
      expect(game.choice).to eq "rock"
    end
    it 'should set opponent_choice to be random "rock", "paper", "scissors"' do
      game.choose("rock")
      expect(game.opponent_choice).to eq("scissors")
      game.choose("rock")
      expect(game.opponent_choice).to eq("paper")
      game.choose("rock")
      expect(game.opponent_choice).to eq("paper")
      game.choose("rock")
      expect(game.opponent_choice).to eq("rock")
    end
  end
  it 'should store an instance of itself using create' do
    expect(Game.create(name)).to be_a Game
  end
  it 'should return an instance of itself' do
    expect(Game.instance).to be_a Game
  end
end
