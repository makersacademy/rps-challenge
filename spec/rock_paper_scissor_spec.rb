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

    it 'returns player_1 wins for 🗿 vs ✂' do
      @player_1.move = '🗿'
      @player_2.move = '✂'
      expect(subject.result(@player_1, @player_2)).to eq "#{@player_1.name} #{RockPaperScissors::RESULT_WINS}"
    end

    it 'returns player_2 wins for 🗿 vs 📄' do
      @player_1.move = '🗿'
      @player_2.move = '📄'
      expect(subject.result(@player_1, @player_2)).to eq "#{@player_2.name} #{RockPaperScissors::RESULT_WINS}"
    end

    it 'returns draw for 📄 vs 📄' do
      @player_1.move = '📄'
      @player_2.move = '📄'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

    it 'returns player_1 wins for 📄 vs 🗿' do
      @player_1.move = '📄'
      @player_2.move = '🗿'
      expect(subject.result(@player_1, @player_2)).to eq "#{@player_1.name} #{RockPaperScissors::RESULT_WINS}"
    end

    it 'returns player_2 wins for 📄 vs ✂' do
      @player_1.move = '📄'
      @player_2.move = '✂'
      expect(subject.result(@player_1, @player_2)).to eq "#{@player_2.name} #{RockPaperScissors::RESULT_WINS}"
    end

    it 'returns draw for ✂ vs ✂' do
      @player_1.move = '✂'
      @player_2.move = '✂'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

    it 'returns player_2 wins for ✂ vs 🗿' do
      @player_1.move = '✂'
      @player_2.move = '🗿'
      expect(subject.result(@player_1, @player_2)).to eq "#{@player_2.name} #{RockPaperScissors::RESULT_WINS}"
    end

    it 'returns player_1 wins for ✂ vs 📄' do
      @player_1.move = '✂'
      @player_2.move = '📄'
      expect(subject.result(@player_1, @player_2)).to eq "#{@player_1.name} #{RockPaperScissors::RESULT_WINS}"
    end

  end
  
end
