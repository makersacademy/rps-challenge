require 'game'

describe Game do
  
  let(:game) { Game.new(player) }
  let(:player) { double(:player, choice: 'rock') }
  
  describe '#player' do
    it 'retrieves player' do
      expect(game.player).to eq player
    end
  end

  describe '#give_result' do  
    context 'when player picked rock and computer scissors' do
      it 'returns :win' do
        allow_any_instance_of(Array).to receive(:sample) { 'scissors' }
        expect(game.give_result).to eq :win
      end
    end
    
    context 'when player picked rock and computer rock' do
      it 'returns :draw' do
        allow_any_instance_of(Array).to receive(:sample) { 'rock' }
        expect(game.give_result).to eq :draw
      end
    end

    context 'when player picked rock and computer paper' do
      it 'returns :loss' do
        allow_any_instance_of(Array).to receive(:sample) { 'paper' }
        expect(game.give_result).to eq :loss
      end
    end
  end
end