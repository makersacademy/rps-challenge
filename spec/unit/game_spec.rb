require_relative '../../lib/game'

describe Game do 

  context 'Player picks rock, paper or scissors' do
    game = Game.new
    it 'allows the user to choose' do
    expect(game.select_player_choice(:rock)).to eq :rock
    end
  end

  context 'Computer picks rock, paper or scissors' do
    game = Game.new
    it 'allows the computer to choose' do
    expect(game.select_computer_choice(:rock)).to eq :rock
    end
  end
end 