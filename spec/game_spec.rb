require 'game'

describe Game do

	subject(:game) { described_class.new(player, computer)}
	let(:player) { double(:player) }
  let(:computer) {double(:computer)}
  
  it 'starts with a player and a computer' do
    expect(game.player1).to eq player
  end

  it 'starts with a player and a computer' do
    expect(game.player2).to eq computer
  end

  context 'winning situations', focus: :true do
    it 'sets player as winner if player chooses rock and computer chooses scissors' do
      allow(computer).to receive(:choice) { "Scissors" }
      allow(player).to receive(:choice).and_return("Rock")
      game.outcome
      expect(game.win?).to be_truthy
    end

    it 'sets player as winner if player chooses scissors and computer chooses paper' do
      allow(computer).to receive(:choice) { "Paper" }
      allow(player).to receive(:choice).and_return("Scissors")
      game.outcome
      expect(game.win?).to be_truthy
    end

    it 'sets player as winner if player chooses paper and computer chooses rock' do
      allow(computer).to receive(:choice) { "Rock" }
      allow(player).to receive(:choice).and_return("Paper")
      game.outcome
      expect(game.win?).to be_truthy
    end
  end
  
  context 'losing situations' do
    it 'sets as loser if player chooses rock and computer chooses paper' do
      allow(computer).to receive(:choice) { "Paper" }
      allow(player).to receive(:choice).and_return("Rock")
      game.outcome
      expect(game.win?).to be_falsey
    end

    it 'sets as loser if player chooses scissors and computer chooses rock' do
      allow(computer).to receive(:choice) { "Rock" }
      allow(player).to receive(:choice).and_return("Scissors")
      game.outcome
      expect(game.win?).to be_falsey
    end

    it 'sets as loser if player chooses paper and computer chooses scissors' do
      allow(computer).to receive(:choice) { "Scissors" }
      allow(player).to receive(:choice).and_return("Paper")
      game.outcome
      expect(game.win?).to be_falsey
    end

  end

  context 'draw situations' do
    it 'sets the game to a draw if player and computer both choose rock' do
      allow(computer).to receive(:choice) { "Rock" }
      allow(player).to receive(:choice).and_return("Rock")
      game.outcome
      expect(game.win?).to be_nil
    end

    it 'sets the game to a draw if player and computer both choose scissors' do
      allow(computer).to receive(:choice) { "Scissors" }
      allow(player).to receive(:choice).and_return("Scissors")
      game.outcome
      expect(game.win?).to be_nil
    end

    it 'sets the game to a draw if player and computer both choose paper' do
      allow(computer).to receive(:choice) { "Paper" }
      allow(player).to receive(:choice).and_return("Paper")
      game.outcome
      expect(game.win?).to be_nil
    end

    it 'does not set the game to a draw if computer beats player' do
      allow(computer).to receive(:choice) { "Scissors" }
      allow(player).to receive(:choice).and_return("Paper")
      game.outcome
      expect(game.win?).to_not be_nil
    end
  end
  
end