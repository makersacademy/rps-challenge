class TwoPlayer

  @@two_player_hash =  {:player1 => nil, :player2 => nil}

  def self.start_two_player_game(move, name)
      if @@two_player_hash[:player1] == true
         @@two_player_hash[:player2] = true
         @@two_player_hash[:player2_move] = move
         @@two_player_hash[:player2_name] = name
      end
      if  @@two_player_hash[:player1] == nil && @@two_player_hash[:player2] == nil
          @@two_player_hash[:player1] = true
          @@two_player_hash[:player1_move] = move
          @@two_player_hash[:player1_name] = name
      end
  end

  def self.two_player_hash
    @@two_player_hash
  end


end
