require 'game'

describe Game do

	subject(:game) { described_class.new(player)}
	let(:player) { double(:player) }
  
  it 'starts with a player' do
    expect(game.player).to eq player
  end

  context '#move' do
    it 'sets the choice' do
    	game.move("Rock")
    	expect(game.choice).to eq "Rock"
    end
  end

  context '#computer_move' do
  	it 'sets the computers choice' do
  		game.computer_move
  		expect(Game::CHOICES).to include game.computer_choice
  	end
  end

  context 'winning situations' do
    it 'sets player as winner if player chooses rock and computer chooses scissors' do
      allow(game).to receive(:computer_choice) { "Scissors" }
      game.move("Rock")
      game.computer_move
      game.outcome
      expect(game.win?).to be_truthy
    end

    it 'sets player as winner if player chooses scissors and computer chooses paper' do
      allow(game).to receive(:computer_choice) { "Paper" }
      game.move("Scissors")
      game.computer_move
      game.outcome
      expect(game.win?).to be_truthy
    end

    it 'sets player as winner if player chooses paper and computer chooses rock' do
      allow(game).to receive(:computer_choice) { "Rock" }
      game.move("Paper")
      game.computer_move
      game.outcome
      expect(game.win?).to be_truthy
    end
  end
  
  context 'losing situations' do
    it 'sets as loser if player chooses rock and computer chooses paper' do
      allow(game).to receive(:computer_choice) { "Paper" }
      game.move("Rock")
      game.computer_move
      game.outcome
      expect(game.win?).to be_falsey
    end

    it 'sets as loser if player chooses scissors and computer chooses rock' do
      allow(game).to receive(:computer_choice) { "Rock" }
      game.move("Scissors")
      game.computer_move
      game.outcome
      expect(game.win?).to be_falsey
    end

    it 'sets as loser if player chooses paper and computer chooses scissors' do
      allow(game).to receive(:computer_choice) { "Scissors" }
      game.move("Paper")
      game.computer_move
      game.outcome
      expect(game.win?).to be_falsey
    end

  end

  context 'draw situations' do
    it 'sets the game to a draw if player and computer both choose rock' do
      allow(game).to receive(:computer_choice) { "Rock" }
      game.move("Rock")
      game.computer_move
      game.outcome
      expect(game.win?).to be_nil
    end

    it 'sets the game to a draw if player and computer both choose scissors' do
      allow(game).to receive(:computer_choice) { "Scissors" }
      game.move("Scissors")
      game.computer_move
      game.outcome
      expect(game.win?).to be_nil
    end

    it 'sets the game to a draw if player and computer both choose paper' do
      allow(game).to receive(:computer_choice) { "Paper" }
      game.move("Paper")
      game.computer_move
      game.outcome
      expect(game.win?).to be_nil
    end

    it 'does not set the game to a draw if computer beats player' do
      allow(game).to receive(:computer_choice) { "Scissors" }
      game.move("Paper")
      game.computer_move
      game.outcome
      expect(game.win?).to_not be_nil
    end
  end
end