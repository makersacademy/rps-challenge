require 'rock_paper_scissors'

describe RockPaperScissors do

  describe '#initialize' do
    it 'should set player_choice attribute to argument passed into initialize' do
      rps = RockPaperScissors.new('rock')
      expect(rps.player_choice).to eq 'rock'
    end
  end
  describe '#play & win' do
    it 'should return WIN when play is called with ROCK and computer choose scissors' do
      rps = RockPaperScissors.new('ROCK')
      stub_const('RockPaperScissors::MOVES', ['SCISSORS'])
      expect(rps.play).to eq 'WIN'
    end
    it 'should return WIN when play is called with SCISSORS and computer choose paper' do
      rps = RockPaperScissors.new('SCISSORS')
      stub_const('RockPaperScissors::MOVES', ['PAPER'])
      expect(rps.play).to eq 'WIN'
    end
    it 'should return WIN when play is called with PAPER and computer choose rock' do
      rps = RockPaperScissors.new('PAPER')
      stub_const('RockPaperScissors::MOVES', ['ROCK'])
      expect(rps.play).to eq 'WIN'
    end
  end
  describe '#play & lose' do
    it 'should return LOSE when play is called with PAPER and computer choose scissors' do
      rps = RockPaperScissors.new('PAPER')
      stub_const('RockPaperScissors::MOVES', ['SCISSORS'])
      expect(rps.play).to eq 'LOSE'
    end
    it 'should return LOSE when play is called with ROCK and computer choose paper' do
      rps = RockPaperScissors.new('ROCK')
      stub_const('RockPaperScissors::MOVES', ['PAPER'])
      expect(rps.play).to eq 'LOSE'
    end
    it 'should return LOSE when play is called with SCISSORS and computer choose rock' do
      rps = RockPaperScissors.new('SCISSORS')
      stub_const('RockPaperScissors::MOVES', ['ROCK'])
      expect(rps.play).to eq 'LOSE'
    end
  end
  describe '#play & draw' do
    it 'should return DRAW when play is called with ROCK and computer choose ROCK' do
      rps = RockPaperScissors.new('ROCK')
      stub_const('RockPaperScissors::MOVES', ['ROCK'])
      expect(rps.play).to eq 'DRAW'
    end
    it 'should return DRAW when play is called with PAPER and computer choose paper' do
      rps = RockPaperScissors.new('PAPER')
      stub_const('RockPaperScissors::MOVES', ['PAPER'])
      expect(rps.play).to eq 'DRAW'
    end
    it 'should return DRAW when play is called with SCISSORS and computer choose scissors' do
      rps = RockPaperScissors.new('SCISSORS')
      stub_const('RockPaperScissors::MOVES', ['SCISSORS'])
      expect(rps.play).to eq 'DRAW'
    end
  end
end
