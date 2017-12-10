require 'result'
describe Result do
  context '#initialize' do
    it 'should initialize with two choices' do
      result = Result.new('Rock', 'Paper')
      expect(result.computer_selection).to eq 'Paper'
    end
    it 'should initialize with two choices' do
      result = Result.new('Paper', 'Rock')
      expect(result.player_selection).to eq 'Paper'
    end

    it 'should initialize with computer score = 0' do
      result = Result.new('Paper', 'Rock')
      expect(result.computer_score).to eq 0
    end

    it 'should initialize with player score = 0' do
      result = Result.new('Paper', 'Rock')
      expect(result.player_score).to eq 0
    end


  end

  context '#calc_result' do
    it 'computuer should win when, player: rock, computuer: paper' do
      result = Result.new('Rock', 'Paper')
      result.calc_result
      expect(result.result).to eq 'Computer wins'
    end

    it 'computuer should win when, player: paper, computuer: scissors' do
      result = Result.new('Paper', 'Scissors')
      result.calc_result
      expect(result.result).to eq 'Computer wins'
    end

    it 'computuer should win when, player: scissors, computuer: rock' do
      result = Result.new('Scissors', 'Rock')
      result.calc_result
      expect(result.result).to eq 'Computer wins'
    end

    it 'player should win when, player: paper, computuer: rock' do
      result = Result.new('Paper', 'Rock')
      result.calc_result
      expect(result.result).to eq 'You win'
    end

    it 'player should win when, player: scissors, computuer: paper' do
      result = Result.new('Scissors', 'Paper')
      result.calc_result
      expect(result.result).to eq 'You win'
    end

    it 'player should win when, player: rock, computuer: scissors' do
      result = Result.new('Rock', 'Scissors')
      result.calc_result
      expect(result.result).to eq 'You win'
    end

    it 'should be a draw whenever the two selections are the same' do
      result = Result.new('Rock', 'Rock')
      result.calc_result
      expect(result.result).to eq 'Draw'
    end
  end
end
