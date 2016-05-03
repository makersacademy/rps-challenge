require 'game'

describe Game do 
  subject(:game) {described_class.new(player_1)}
  let(:player_1) {spy :player}
  let(:paper)    {double :choice_1}
  let(:rock)     {double :choice_2}

  describe 'players joining the game' do 
    it 'gets a player' do 
      expect(game.player_1).to eq player_1
    end
  end

  describe 'correctly choosing the winning hand' do 
    it 'declares paper the winner over rock' do 
      expect(subject.play('paper', 'rock')).to eq 'Paper'
    end

    it 'declares scissors the winner over paper' do 
      expect(subject.play('scissors', 'paper')).to eq 'Scissors'
    end

    it 'declares rock the winner over scissors' do 
      expect(subject.play('scissors', 'rock')).to eq 'Rock'
    end

    it 'declares a tie if hands are identical' do 
      expect(subject.tied_game?('paper', 'paper')).to eq nil
    end
  end

end