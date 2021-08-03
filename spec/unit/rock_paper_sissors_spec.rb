require 'rock_paper_sissors'

describe RockPaperSissors do

  context 'returns result' do

    it 'should return rock' do
      game = RockPaperSissors.new('rock', 'sissors')
      expect(game.check_winner).to eq 'rock'
    end

    it 'should return sissors' do
      game = RockPaperSissors.new('paper', 'sissors')
      expect(game.check_winner).to eq 'sissors'
    end

    it 'should return draw' do
      game = RockPaperSissors.new('sissors', 'sissors')
      expect(game.check_winner).to eq 'draw'
    end

  end

end
