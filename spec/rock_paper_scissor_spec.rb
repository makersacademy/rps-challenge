require 'rock_paper_scissors'

describe RockPaperScissors do
  before(:each) do
    @player_1 = Player.new('Player_1')
    @player_2 = Player.new('Player_2')
  end

  describe '#result' do

    it 'returns draw for 🗿 vs 🗿' do
      @player_1.move = '🗿'
      @player_2.move = '🗿'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

    it 'returns draw for 📄 vs 📄' do
      @player_1.move = '📄'
      @player_2.move = '📄'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

    it 'returns draw for ✂ vs ✂' do
      @player_1.move = '✂'
      @player_2.move = '✂'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

  end
  
end
