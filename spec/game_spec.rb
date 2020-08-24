require 'game'

describe Game do
subject(:game) { described_class.new(player_pick, computer)}
let(:player_pick) {'Rock'}


  describe '#select_winner' do
  let(:computer) { 'Scissors' }
    it 'player wins' do
      #  allow(computer).to receive(:computer_pick).and_return('Scissors')
        expect(game.select_winner).to eq 'Wins!'
    end
  end

  describe '#select_winner' do
  let(:computer) { 'Rock' }
    it 'result is a draw' do
       # allow(computer).to receive(:computer_pick).and_return('Rock')
        expect(game.select_winner).to eq 'Draw'
    end
  end

  describe '#select_winner' do
  let(:computer) { 'Paper' }
    it 'player losses' do
       # allow(computer).to receive(:computer_pick).and_return('Paper')
        expect(game.select_winner).to eq 'Lose!'
    end
  end
end
