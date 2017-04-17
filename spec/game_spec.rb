require_relative '../app/lib/game.rb'
require_relative '../app/lib/player.rb'
describe Game do

   before do
    game = Game.new("Gimi")
   end

  it 'Player 1 can add their answer to game' do
    game = Game.new("Gimi","Tara")
    game.add_play1_ans("1")
    expect(game.answer_p1).to eq '1'
  end

  it 'Player 2 can add their answer to game' do
    game = Game.new(Player.new("Gimi"),Player.new("Tara"))
    game.add_play2_ans("2")
    expect(game.answer_p2).to eq '2'
  end

  it 'can calculate the winner' do
    game = Game.new(Player.new("Gimi"),Player.new("Tara"))
    game.add_play1_ans("1")
    game.add_play2_ans("2")
    game.calc_winner
    expect(game.winner).to eq 'Tara'
  end

end
