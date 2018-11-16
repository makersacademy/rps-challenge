require 'Game'

describe Game do

  it 'can determine who wins' do
    p1 = Player.new("Stu", :human)
    p2 = Player.new("Art", :human)
    game = Game.new(p1, p2)
    p1.make_move(:rock)
    p2.make_move(:paper)
    expect(game.winner(p1, p2)).to eq p2
  end

  it "can increase the winning player's score" do
    p1 = Player.new("Stu", :human)
    p2 = Player.new("Art", :human)
    game = Game.new(p1, p2)
    p1.make_move(:rock)
    p2.make_move(:paper)
    game.increase_winner_score
    expect(p2.score).to eq 1
  end

end
