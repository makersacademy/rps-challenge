require 'game'

describe Game do
  subject(:game) {described_class.new('John')}

  context 'basic functionality' do
    it 'stores name as a class variable' do
      described_class.create_a_game('John')
      expect(described_class.current_game.name).to eq('John')
    end
  end

  context 'game logic tests' do
    it 'rock-rock: draw' do
      expect(game.play("rock","rock")).to eq Game::RESULTS[0]
    end
    it 'rock-paper: loose' do
      expect(game.play("rock","paper")).to eq Game::RESULTS[2]
    end
    it 'rock-scissors: win' do
      expect(game.play("rock","scissors")).to eq Game::RESULTS[1]
    end
    it 'paper-rock: win' do
      expect(game.play("paper","rock")).to eq Game::RESULTS[1]
    end
    it 'paper-paper: draw' do
      expect(game.play("paper","paper")).to eq Game::RESULTS[0]
    end
    it 'paper-scissors: loose' do
      expect(game.play("paper","scissors")).to eq Game::RESULTS[2]
    end
    it 'scissors-rock: loose' do
      expect(game.play("scissors","rock")).to eq Game::RESULTS[2]
    end
    it 'scissors-paper: win' do
      expect(game.play("scissors","paper")).to eq Game::RESULTS[1]
    end
    it 'scissors-scissors: draw' do
      expect(game.play("scissors","scissors")).to eq Game::RESULTS[0]
    end
  end

  context 'random assignment test' do
    it 'uses random to play second hand if needed' do
      allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
      expect(game.play("scissors")).to eq Game::RESULTS[2]
    end
  end

end
