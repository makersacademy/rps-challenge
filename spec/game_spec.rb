require 'game.rb'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) { double :player, name: 'Lawrence',  choice: 'rock'}
  let(:player_2) {double :player, name: 'Computer', choice: 'scissors'}

  describe 'players' do

    it 'it has two players' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end

    it 'players have names' do
      expect(game.player_1.name).to eq 'Lawrence'
      expect(game.player_2.name).to eq 'Computer'

    end

    it 'players have choices' do
      expect(game.player_1.choice).to eq 'rock'
      expect(game.player_2.choice).to eq 'scissors'
    end
  end

  describe 'play' do

    it 'has a winner' do
      game.play
      expect(game.winner).to eq player_1.name
    end
  end

  describe 'rules' do
    subject(:game) {described_class.new(player_1, player_2)}
    let(:player_1) { double :player, name: 'Lawrence',  choice: 'rock'}
    let(:player_2) {double :player, name: 'Computer', choice: 'scissors'}

    it 'scissors vs paper' do
      allow(player_1).to receive(:choice).and_return('scissors')
      allow(player_2).to receive(:choice).and_return('paper')
      game.play
      expect(game.winner).to eq player_1.name
    end

    it 'paper vs scissors' do
      allow(player_1).to receive(:choice).and_return('paper')
      allow(player_2).to receive(:choice).and_return('scissors')
      game.play
      expect(game.winner).to eq player_2.name
    end

    it 'paper vs rock' do
      allow(player_1).to receive(:choice).and_return('paper')
      allow(player_2).to receive(:choice).and_return('rock')
      game.play
      expect(game.winner).to eq player_1.name
    end

    it 'rock vs paper' do
      allow(player_1).to receive(:choice).and_return('rock')
      allow(player_2).to receive(:choice).and_return('paper')
      game.play
      expect(game.winner).to eq player_2.name
    end

    it 'rock vs scissors' do
      allow(player_1).to receive(:choice).and_return('rock')
      allow(player_2).to receive(:choice).and_return('scissors')
      game.play
      expect(game.winner).to eq player_1.name
    end

    it 'scissors vs rock' do
      allow(player_1).to receive(:choice).and_return('scissors')
      allow(player_2).to receive(:choice).and_return('rock')
      game.play
      expect(game.winner).to eq player_2.name
    end

    it 'draw' do
      allow(player_1).to receive(:choice).and_return('scissors')
      allow(player_2).to receive(:choice).and_return('scissors')
      game.play
      expect(game.winner).to eq 'draw'
    end
  end
end
