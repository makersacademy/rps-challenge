require 'game'

describe Game do

  describe '#choose_rps' do
    it 'selects a random choice from an array' do
      expect(['rock', 'paper', 'scissors']).to include(subject.choose_rps)
    end
  end

  describe '#compare_choices' do
    before :each do
      @game = Game.new
    end
    it 'says if the choices are tied' do
      allow(@game).to receive(:choose_rps) { 'rock' }
      expect(@game.compare_choices).to eq 'tie'
    end
    it 'confirms player win' do
      allow(@game).to receive(:choose_rps) { 'scissors' }
      expect(@game.compare_choices).to eq 'Player Wins!'
    end
    it 'confirms computer win' do
      allow(@game).to receive(:choose_rps) { 'paper' }
      expect(@game.compare_choices).to eq 'Computer Wins!'
    end
  end
end