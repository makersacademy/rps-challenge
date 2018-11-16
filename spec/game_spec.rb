require 'game'

describe Game do
  let(:human_player_class) { double :human_player_class, new: ben}
  let(:computer_player_class) { double :computer_player_class, new: computer}
  let(:computer) { double :computer, name: "Computer"}
  let(:ben) { double :ben, name: "Ben"}

  before (:each) do
    game = Game.new("Ben", human_player_class, computer_player_class)
  end

  it "creates 1 human player" do
    game = Game.new("Ben", human_player_class, computer_player_class)
    expect(game.human_player.name).to eq "Ben"
  end

  it "creates 1 computer player" do
    game = Game.new("Ben", human_player_class, computer_player_class)
    expect(game.computer_player.name).to eq "Computer"
  end

  it "should decide who wins" do
    game = Game.new("Ben", human_player_class, computer_player_class)

    #Human wins
    player_move_stub(game, "Scissors", "Paper")
    expect(game.decide_winner(game.human_player.selected_move, game.computer_player.selected_move)).to eq(game.human_player.name)

    player_move_stub(game, "Rock", "Scissors")
    expect(game.decide_winner(game.human_player.selected_move, game.computer_player.selected_move)).to eq(game.human_player.name)

    player_move_stub(game, "Paper", "Rock")
    expect(game.decide_winner(game.human_player.selected_move, game.computer_player.selected_move)).to eq(game.human_player.name)

    #Compuer wins
    player_move_stub(game, "Scissors", "Rock")
    expect(game.decide_winner(game.human_player.selected_move, game.computer_player.selected_move)).to eq(game.computer_player.name)

    player_move_stub(game, "Rock", "Paper")
    expect(game.decide_winner(game.human_player.selected_move, game.computer_player.selected_move)).to eq(game.computer_player.name)

    player_move_stub(game, "Paper", "Scissors")
    expect(game.decide_winner(game.human_player.selected_move, game.computer_player.selected_move)).to eq(game.computer_player.name)

    #Draw
    player_move_stub(game, "Rock", "Rock")
    expect(game.decide_winner(game.human_player.selected_move, game.computer_player.selected_move)).to eq("Draw")
  end
end
