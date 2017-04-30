require 'game'

describe Game do
  let(:human) { double :human }
  let(:ai) { double :ai }
  let(:ai_class) { class_double("AiPlayer", new: ai).
                          as_stubbed_const }
  before(:example) { stub_const("AiPlayer", ai_class) }
  subject(:game) { described_class.new({ player_1: human}) }

  describe '#initialize' do

    it 'saves a hash of players as attributes' do
      expect(game).to have_attributes(player_1: human)
    end

    it 'saves an AI player as player two' do
      expect(game).to have_attributes(player_2: ai)
    end

    it 'saves a second human player if provided 'do
      expect(Game.new({ player_1: human, player_2: human })).to have_attributes(player_2: human)
    end
  end

  describe '#decide_winner' do
    let(:always_scissors) { double :choice => :scissors, :sym_name => :always_scissors }
    let(:always_rock) { double :choice => :rock, :sym_name => :always_rock }
    let(:always_paper) { double :choice => :paper, :sym_name => :always_paper }
    subject(:Game) { described_class }
    scenario 'rock vs scissors' do
      expect(Game.new({ player_1: always_rock, player_2: always_scissors }).decide_winner).to eq :always_rock
    end
    scenario 'rock vs paper' do
      expect(Game.new({ player_1: always_rock, player_2: always_paper }).decide_winner).to eq :always_paper
    end
    scenario 'scissors vs paper' do
      expect(Game.new({ player_1: always_scissors, player_2: always_paper }).decide_winner).to eq :always_scissors
    end
    scenario 'paper vs paper' do
      expect(Game.new({ player_1: always_paper, player_2: always_paper }).decide_winner).to eq :draw
    end
    scenario 'rock vs rock' do
      expect(Game.new({ player_1: always_rock, player_2: always_rock }).decide_winner).to eq :draw
    end
    scenario 'scissors vs scissors' do
      expect(Game.new({ player_1: always_scissors, player_2: always_scissors }).decide_winner).to eq :draw
    end
  end
end
