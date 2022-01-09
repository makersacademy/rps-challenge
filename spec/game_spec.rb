require 'game'

describe Game do
  
  let(:game) { Game.new }
  let(:rock) { 'rock' }
  let(:paper) { 'paper' }
  let(:scissors) { 'scissors' }

  describe '#make_choice' do
    it 'returns a choice' do
      game = Game.new(['rock'])
      expect(game.make_choice).to eq 'rock'
    end
  end

  describe '#give_result' do
    context 'when player picked scissors and computer paper' do
      it 'returns :win' do
        expect(game.give_result(rock, scissors)).to eq :win
      end
    end
    
    context 'when player picked scissors and computer scissors' do
      it 'returns :draw' do
        expect(game.give_result(rock, rock)).to eq :draw
      end
    end

    context 'when player picked scissors and computer scissors' do
      it 'returns :loss' do
        expect(game.give_result(rock, paper)).to eq :loss
      end
    end


  end
end