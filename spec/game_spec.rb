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
      allow(computer).to receive(:choice) {  :scissors }
      allow(player).to receive(:choice).and_return(:rock)
      game.outcome
      expect(game.outcome).to eq :win
    end

    it 'sets player as winner if player chooses scissors and computer chooses paper' do
      allow(computer).to receive(:choice) { :paper }
      allow(player).to receive(:choice).and_return( :scissors)
      game.outcome
      expect(game.outcome).to eq :win
    end

    it 'sets player as winner if player chooses paper and computer chooses rock' do
      allow(computer).to receive(:choice) { :rock }
      allow(player).to receive(:choice).and_return(:paper)
      game.outcome
      expect(game.outcome).to eq :win
    end
  end
  
  context 'losing situations' do
    it 'sets as loser if player chooses rock and computer chooses paper' do
      allow(computer).to receive(:choice) { :paper }
      allow(player).to receive(:choice).and_return(:rock)
      game.outcome
      expect(game.outcome).to eq :lose
    end

    it 'sets as loser if player chooses scissors and computer chooses rock' do
      allow(computer).to receive(:choice) { :rock }
      allow(player).to receive(:choice).and_return( :scissors)
      game.outcome
      expect(game.outcome).to eq :lose
    end

    it 'sets as loser if player chooses paper and computer chooses scissors' do
      allow(computer).to receive(:choice) {  :scissors }
      allow(player).to receive(:choice).and_return(:paper)
      game.outcome
      expect(game.outcome).to eq :lose
    end

  end

  context 'draw situations' do
    it 'sets the game to a draw if player and computer both choose rock' do
      allow(computer).to receive(:choice) { :rock }
      allow(player).to receive(:choice).and_return(:rock)
      game.outcome
      expect(game.outcome).to eq :draw
    end

    it 'sets the game to a draw if player and computer both choose scissors' do
      allow(computer).to receive(:choice) {  :scissors }
      allow(player).to receive(:choice).and_return( :scissors)
      game.outcome
      expect(game.outcome).to eq :draw
    end

    it 'sets the game to a draw if player and computer both choose paper' do
      allow(computer).to receive(:choice) { :paper }
      allow(player).to receive(:choice).and_return(:paper)
      game.outcome
      expect(game.outcome).to eq :draw
    end

    it 'does not set the game to a draw if computer beats player' do
      allow(computer).to receive(:choice) {  :scissors }
      allow(player).to receive(:choice).and_return(:paper)
      game.outcome
      expect(game.outcome).to_not eq :draw
    end
  end

  context 'edge cases', focus: :true do
    it 'moves twice, wins first time and then draws' do
      allow(computer).to receive(:choice) {  :scissors }
      allow(player).to receive(:choice) { :rock}
      game.outcome
      allow(player).to receive(:choice) { :scissors}
      game.outcome
      expect(game.outcome).to eq :draw
    end
  end
  
end