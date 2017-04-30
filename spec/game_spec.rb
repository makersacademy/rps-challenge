require 'game'

describe Game do
  let(:human) { double :human }
  let(:ai) { double :ai }
  let(:ai_class) { class_double("AiPlayer", new: ai).as_stubbed_const }
  before(:example) { stub_const("AiPlayer", ai_class) }
  subject(:game) { described_class.new({ player_1: human }) }

  describe '#initialize' do

    it 'saves a hash of players as attributes' do
      expect(game).to have_attributes(player_1: human)
    end

    it 'saves an AI player as player two' do
      expect(game).to have_attributes(player_2: ai)
    end

    it 'saves a second human player if provided ' do
      expect(Game.new({ player_1: human, player_2: human })).to have_attributes(player_2: human)
    end
  end

  describe '#print_result' do
    let(:always_scissors) { double :choice => :scissors, :name => "Always Scissors" }
    let(:always_rock) { double :choice => :rock, :name => "Always Rock" }
    let(:always_paper) { double :choice => :paper, :name => "Always Paper" }
    subject(:Game) { described_class }
    scenario 'rock vs scissors' do
      expect(Game.new({ player_1: always_rock, player_2: always_scissors }).print_result).
        to eq "The winner is Always Rock!"
    end
    scenario 'rock vs paper' do
      expect(Game.new({ player_1: always_paper, player_2: always_rock }).print_result).
        to eq "The winner is Always Paper!"
    end
    scenario 'scissors vs paper' do
      expect(Game.new({ player_1: always_scissors, player_2: always_paper }).print_result).
        to eq "The winner is Always Scissors!"
    end
    scenario 'paper vs paper' do
      expect(Game.new({ player_1: always_paper, player_2: always_paper }).print_result).
        to eq "The winner is ... It's a draw!"
    end
    scenario 'rock vs rock' do
      expect(Game.new({ player_1: always_rock, player_2: always_rock }).print_result).
        to eq "The winner is ... It's a draw!"
    end
    scenario 'scissors vs scissors' do
      expect(Game.new({ player_1: always_scissors, player_2: always_scissors }).print_result).
        to eq "The winner is ... It's a draw!"
    end
  end
end
