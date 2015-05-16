require 'game'

describe Game do 

  let(:player_1) { :player_1 }
  let(:player_2) { :player_2 }
  let(:game) { Game.new }

   before(:each) do
    game.add_player_one player_1
    game.add_player_two player_2
  end 

  it "can add two players" do
    expect(game).to have_player_one
    expect(game).to have_player_two
  end

  it "can let each player choose a tool" do
    game.choose_tool game.player_one, :Rock
    expect(game.player_one[:tool]).to eq :Rock
  end

  it "can let players choose only Rock, Paper, or Scissors" do
    expect { game.choose_tool game.player_one, :Horse }.to raise_error "Choose only either :Rock, :Scissors, or :Paper"
  end

  it "be ready when both players chose a tool" do
    game.choose_tool game.player_one, :Rock
    game.choose_tool game.player_two, :Rock
    expect(game).to be_ready
  end

  it "let players choose a tool again if it's a draw" do
    game.choose_tool game.player_one, :Rock
    game.choose_tool game.player_two, :Rock
    expect { game.choose_tool game.player_one, :Rock }.not_to raise_error
  end

  it "is over when there is a winner" do
    game.choose_tool game.player_one, :Rock
    game.choose_tool game.player_two, :Paper
    expect(game.play).to eq "player_2 is the winner. Game Over!"
  end 

  it "let Rock win Scissors" do
    game.choose_tool game.player_one, :Rock
    game.choose_tool game.player_two, :Scissors
    expect(game.play).to eq "player_1 is the winner. Game Over!"
  end 

  it "let Scissors win Paper" do
    game.choose_tool game.player_one, :Paper
    game.choose_tool game.player_two, :Scissors
    expect(game.play).to eq "player_2 is the winner. Game Over!"
  end 

  it "let Paper win Rock" do
    game.choose_tool game.player_one, :Paper
    game.choose_tool game.player_two, :Rock
    expect(game.play).to eq "player_2 is the winner. Game Over!"
  end 

  it "can delclare a winner only once" do
    game.choose_tool game.player_one, :Paper
    game.choose_tool game.player_two, :Rock
    game.play
    expect { game.play }.to raise_error "Game Over"
  end 

  it "drwas if both players have the same tool" do
    game.choose_tool game.player_one, :Rock
    game.choose_tool game.player_two, :Rock
    expect(game.play).to eq "Draw. Please choose tools again"
  end 

  it "ask player to choose tool after a draw" do
    game.choose_tool game.player_one, :Paper
    game.choose_tool game.player_two, :Paper
    game.play
    expect { game.play }.to raise_error "Choose tool"
  end
  
end