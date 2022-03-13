require 'result_manager'

describe ResultManager do

  subject(:result_manager) { ResultManager.new }

  context 'same choice' do
    it 'returns draw ' do
      result_manager.determine_result("rock", "rock")
      expect(result_manager.result).to eq 'draw'
    end
  end
  
  context 'different choices' do
    it 'returns player1' do
      result_manager.determine_result("rock", "scissors")
      expect(result_manager.result).to eq 'player1win'
    end

    it 'returns player1' do
      result_manager.determine_result("paper", "rock")
      expect(result_manager.result).to eq 'player1win'
    end

    it 'returns player1' do
      result_manager.determine_result("scissors", "paper")
      expect(result_manager.result).to eq 'player1win'
    end

    it 'returns player2' do
      result_manager.determine_result("paper", "scissors")
      expect(result_manager.result).to eq 'player2win'
    end

  end
  
end
