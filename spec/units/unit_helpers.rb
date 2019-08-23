def player_moves_ai_moves(p1, p2)
  subject.user_move(p1)
  allow_any_instance_of(Array).to receive(:sample).and_return(p2)
  subject.ai_move
end
