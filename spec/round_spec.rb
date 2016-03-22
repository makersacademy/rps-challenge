require 'round'

describe Round do

subject(:round) {described_class.new(player1,computer)}
let(:player1) {double(:player, name: "Simon")}
let(:computer) {double(:computer)}

before do
  allow(player1).to receive(:choose).and_return(:rock)
  allow(computer).to receive(:choose).and_return(:scissors)
  allow(player1).to receive(:name).and_return("Simon")
  allow(computer).to receive(:name).and_return("HAL")
end

  describe '1 #choices' do
    it '1.0 stored the players turn' do
      round.player1_turn('Rock')
      round.player2_turn
      expect(round.choices).not_to be nil
    end

  end

  describe '2 #player1_turn' do
    it '2.0 allows a player to pick an attack' do
      expect(player1).to receive(:choose)
      round.player1_turn("Rock")
    end
  end

  describe '3 #player2_turn' do
    it '3.0 allows a player to pick an attack' do
      expect(computer).to receive(:choose)
      round.player2_turn
    end
  end

  describe '4 #beats?' do
    it '4.0 returns the outcome of the attack' do
      expect(round.beats?(:rock,:scissors)).to be true
    end
  end


  describe '5 #outcome' do
    it '5.0 stores the outcome of the attack' do
      round.player1_turn('Rock')
      round.player2_turn
      expect(round.outcome[0]).to be true
    end
  end

  describe '5 #winner' do
    it 'returns the winner of the round' do
      round.player1_turn('Rock')
      round.player2_turn
      expect(round.winner).to eq "Simon"
    end
  end
end
