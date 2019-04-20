require 'game'

def determine_outcome(player_choice, expectation)
  expect(game_mittens.run_game(player_choice)).to eq expectation
end

def computer_choice(choice)
  allow(game_mittens).to receive(:random_result){choice}
end

describe Game do
  subject(:game_mittens) { Game.new('mittens') }

  it 'initializes with a player' do
    expect(game_mittens.player).to eq 'mittens'
  end

  describe '#create' do
    it 'stores an instance of game' do
      Game.create('mittens')
      expect(Game.instance.player).to eq 'mittens'
    end
  end

  describe '#run_game' do
    rock = "rock"
    scissors = "scissors"
    paper = "paper"
    win = "Win"
    lose = "Lose"
    draw = "Draw"


    describe 'when computer chooses paper' do
      it 'returns lose if player chooses rock and comp chooses paper' do
        computer_choice(paper)
        determine_outcome(rock, lose)
      end

      it 'returns win if player chooses scissors and comp chooses paper' do
        computer_choice(paper)
        determine_outcome(scissors, win)
      end

      it 'returns draw if player chooses paper and comp chooses paper' do
        computer_choice(paper)
        determine_outcome(paper, draw)
      end
    end

    describe 'when computer chooses rock' do
      it 'returns lose if player chooses scissors and rock chooses paper' do
        computer_choice(rock)
        determine_outcome(scissors, lose)
      end

      it 'returns win if player chooses paper and comp chooses rock' do
        computer_choice(rock)
        determine_outcome(paper, win)
      end

      it 'returns draw if player chooses rock and comp chooses rock' do
        computer_choice(rock)
        determine_outcome(rock, draw)
      end
    end

    describe 'when computer chooses scissors' do
      it 'returns lose if player chooses paper and scissors chooses paper' do
        computer_choice(scissors)
        determine_outcome(paper, lose)
      end

      it 'returns win if player chooses rock and comp chooses scissors' do
        computer_choice(scissors)
        determine_outcome(rock, win)
      end

      it 'returns draw if player chooses scissors and comp chooses scissors' do
        computer_choice(scissors)
        determine_outcome(scissors, draw)
      end
    end
  end
end
