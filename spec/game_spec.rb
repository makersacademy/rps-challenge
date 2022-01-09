require 'game'

describe Game do
  
  let(:game) { Game.new(player) }
  let(:player) { double(:player, choice: 'rock') }
  let(:rock) { 'rock' }
  let(:paper) { 'paper' }
  let(:scissors) { 'scissors' }

  describe '#make_choice' do
    it 'returns a choice' do
      game = Game.new(player, ['rock'])
      expect(game.make_choice).to eq 'rock'
    end
  end
  
  describe '#player' do
    it 'retrieves player' do
      expect(game.player).to eq player
    end
  end

  describe '#give_result' do
    context 'when player picked rock and computer paper' do
      it 'returns :win' do
        expect(game.give_result(scissors)).to eq :win
      end
    end
    
    context 'when player picked rock and computer rock' do
      it 'returns :draw' do
        expect(game.give_result(rock)).to eq :draw
      end
    end

    context 'when player picked rock and computer paper' do
      it 'returns :loss' do
        expect(game.give_result(paper)).to eq :loss
      end
    end
  end
end