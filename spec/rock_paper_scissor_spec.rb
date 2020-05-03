require 'rock_paper_scissors'

describe RockPaperScissors do
  before(:each) do
    @player_1 = Player.new('Player_1')
    @player_2 = Player.new('Player_2')
  end

  describe '#result' do

    it 'returns 🙏 for 🗿 vs 🗿' do
      @player_1.move = '🗿'
      @player_2.move = '🗿'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

    it 'returns 🗿 for 🗿 vs ✂' do
      @player_1.move = '🗿'
      @player_2.move = '✂'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_ROCK
    end

    it 'returns 📄 for 🗿 vs 📄' do
      @player_1.move = '🗿'
      @player_2.move = '📄'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_PAPER
    end

    it 'returns 🙏 for 📄 vs 📄' do
      @player_1.move = '📄'
      @player_2.move = '📄'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

    it 'returns 📄 for 📄 vs 🗿' do
      @player_1.move = '📄'
      @player_2.move = '🗿'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_PAPER
    end

    it 'returns ✂ for 📄 vs ✂' do
      @player_1.move = '📄'
      @player_2.move = '✂'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_SCISSORS
    end

    it 'returns 🙏 for ✂ vs ✂' do
      @player_1.move = '✂'
      @player_2.move = '✂'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_DRAW
    end

    it 'returns 🗿 for ✂ vs 🗿' do
      @player_1.move = '✂'
      @player_2.move = '🗿'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_ROCK
    end

    it 'returns ✂ for ✂ vs 📄' do
      @player_1.move = '✂'
      @player_2.move = '📄'
      expect(subject.result(@player_1, @player_2)).to eq RockPaperScissors::RESULT_SCISSORS
    end

  end
  
end
