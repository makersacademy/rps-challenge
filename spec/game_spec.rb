require "spec_helper"

describe Game do
  # let(:test)     { described_class.new(rock) }
  let(:rock)        { described_class.new(double("player", name: 'Player', weapon: 'Rock')) }
  let(:paper)       { described_class.new(double("player", name: 'Player', weapon: 'Paper')) }
  let(:scissors)    { described_class.new(double("player", name: 'Player', weapon: 'Scissors')) }
  let(:dg_rock)     { double("deepgreen", weapon: 'Rock') }
  let(:dg_paper)    { double("deepgreen", weapon: 'Paper') }
  let(:dg_scissors) { double("deepgreen", weapon: 'Scissors') }


  describe '#player_1_name' do
    it 'returns player 1 name' do
      expect(rock.player_1_name).to eq('Player')
    end
  end

  describe '#player_1_weapon' do
    it 'returns player 1 weapon' do
      expect(rock.player_1_weapon).to eq('Rock')
    end
  end

  describe '#result()' do
    it 'player: rock, computer: rock = Draw' do
      expect(rock.result(dg_rock)).to eq "Draw"
    end
    it 'player: paper, computer: paper = Draw' do
      expect(paper.result(dg_paper)).to eq "Draw"
    end
    it 'player: scissors, computer: scissors = Draw' do
      expect(scissors.result(dg_scissors)).to eq "Draw"
    end
    it 'player: rock, computer: scissors = player' do
      expect(rock.result(dg_scissors)).to eq "Rock beats Scissors. <b>Player wins!</b>"
    end
    it 'player: rock, computer: paper = computer' do
      expect(rock.result(dg_paper)).to eq "Rock looses to Paper. <b>Deep Green wins!</b>"
    end
    it 'player: paper, computer: rock = player' do
      expect(paper.result(dg_rock)).to eq "Paper beats Rock. <b>Player wins!</b>"
    end
    it 'player: paper, computer: scissors = computer' do
      expect(paper.result(dg_scissors)).to eq "Paper looses to Scissors. <b>Deep Green wins!</b>"
    end
    it 'player: scissors, computer: paper = player' do
      expect(scissors.result(dg_paper)).to eq "Scissors beats Paper. <b>Player wins!</b>"
    end
    it 'player: scissors, computer: rock = computer' do
      expect(scissors.result(dg_rock)).to eq "Scissors looses to Rock. <b>Deep Green wins!</b>"
    end
  end
end
