require 'result'

describe Result do

  describe 'returns wins when player beats computer' do
    it 'rock v scissors' do
      expect(Result.new('rock', 'scissors').judge).to eq :win
    end
    it 'scissors v paper' do
      expect(Result.new('scissors', 'paper').judge).to eq :win
    end
    it 'paper v rock' do
      expect(Result.new('paper', 'rock').judge).to eq :win
    end
  end

  describe 'returns draw when player and comp choose the same option' do
    it 'rock v rock' do
      expect(Result.new('rock', 'rock').judge).to eq :draw
    end
    it 'paper v paper' do
      expect(Result.new('paper', 'paper').judge).to eq :draw
    end
    it 'scissors v scissors' do
      expect(Result.new('scissors', 'scissors').judge).to eq :draw
    end
  end

  describe 'returns lose when computer beats player'
    it 'scissors v rock'  do
      expect(Result.new('scissors', 'rock').judge).to eq :lose
    end
    it 'rock v paper'  do
      expect(Result.new('rock', 'paper').judge).to eq :lose
    end
    it 'paper v scissors'  do
      expect(Result.new('paper', 'scissors').judge).to eq :lose
    end
  end
