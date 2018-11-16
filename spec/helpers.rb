module Helpers
  def player_move_stub(game, human_move, computer_move)
    allow(game.human_player).to receive(:selected_move=).and_return(human_move)
    allow(game.human_player).to receive(:selected_move).and_return(human_move)

    allow(game.computer_player).to receive(:selected_move=).and_return(computer_move)
    allow(game.computer_player).to receive(:selected_move).and_return(computer_move)
  end
end
