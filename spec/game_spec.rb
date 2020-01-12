require_relative '../lib/game'
describe 'Game' do

  let(:player_one) { double :player_one, name: "player_one" }
  let(:computer) { double :computer }

  subject(:game) { Game.new(player_one, computer) }

  describe '#player1_chooses' do
    it 'sets player1 choice' do
      expect(player_one).to receive(:make_choice)
      game.player1_chooses(:rock)
    end
  end

  describe '#computer_chooses' do
    it 'sets computer choice' do
      expect(computer).to receive(:make_choice)
      game.computer_chooses(:rock)
    end
  end

  describe '#outcome' do
    context 'player1 wins' do
      it 'shows "player_one wins"' do
        allow(computer).to receive(:choice).and_return(:scissors)
        allow(player_one).to receive(:choice).and_return(:rock)
        expect(game.outcome).to eq "player_one Wins!"
      end
    end

    context 'computer wins' do
      it 'shows "The Computer wins"' do
        allow(computer).to receive(:choice).and_return(:paper)
        allow(player_one).to receive(:choice).and_return(:rock)
        expect(game.outcome).to eq "The Computer Wins!"
      end
    end
  end

end
