def player_moves_ai_moves(player_1, player_2)
  subject.user_move(player_1)
  allow_any_instance_of(Array).to receive(:sample).and_return(player_2)
  subject.ai_move
end
