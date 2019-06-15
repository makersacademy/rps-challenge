require 'game'

describe Game do
  describe '#get_result' do
    before(:each) do
      @weapon = double("weapon")
      @player = double("player")
      @game = Game.new(@player, @weapon)
    end
    
    it 'should return player win if player has paper and game has rock' do
      allow(@player).to receive(:choice) { "paper" }
      allow(@weapon).to receive(:weapon) { "rock" }
      expect(@game.result).to eql('win')
    end

    it 'should return player draw if player has paper and game has paper' do
      allow(@player).to receive(:choice) { "paper" }
      allow(@weapon).to receive(:weapon) { "paper" }
      expect(@game.result).to eql('draw')
    end

    it 'should return player lose if player has paper and game has scissors' do
      allow(@player).to receive(:choice) { "paper" }
      allow(@weapon).to receive(:weapon) { "scissors" }
      expect(@game.result).to eql('lose')
    end

    it 'should return player lose if player has rock and game has paper' do
      allow(@player).to receive(:choice) { "rock" }
      allow(@weapon).to receive(:weapon) { "paper" }
      expect(@game.result).to eql('lose')
    end

    it 'should return player win if player has rock and game has scissors' do
      allow(@player).to receive(:choice) { "rock" }
      allow(@weapon).to receive(:weapon) { "scissors" }
      expect(@game.result).to eql('win')
    end

    it 'should return player lose if player has scissors and game has rock' do
      allow(@player).to receive(:choice) { "scissors" }
      allow(@weapon).to receive(:weapon) { "rock" }
      expect(@game.result).to eql('lose')
    end

    it 'should return player win if player has scissors and game has paper' do
      allow(@player).to receive(:choice) { "scissors" }
      allow(@weapon).to receive(:weapon) { "paper" }
      expect(@game.result).to eql('win')
    end
  end
end
