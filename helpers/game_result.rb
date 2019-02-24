module GameResult
  def play_game
    @game = Game.instance
    if @play_mode != "solo"
      if !params.key?("player_1_weapon") or !params.key?("player_2_weapon")
        @input_missing_message = "Both players must select a weapon each to play. Please try again"
      else

        @player1.choose_weapon(params[:player_1_weapon].to_sym)
        @player2.choose_weapon(params[:player_2_weapon].to_sym)
        @winning_weapon = @game.play(@player1.weapon, @player2.weapon)
        case @winning_weapon
          when nil
            @winning_message = "It's a draw"
          when @player1.weapon
            @winning_message = "#{@player1.name} wins!"
          else
            @winning_message = "#{@player2.name} wins!"
        end
      end
    else
      if !params.key?("player_1_weapon")
        @input_missing_message = "You must select a weapon to play. Please try again"
      else
        @player1.choose_weapon(params[:player_1_weapon].to_sym)
        @winning_weapon = @game.play(@player1.weapon, @player2.weapon)

        case @winning_weapon
          when nil
            @winning_message = "It's a draw"
          when @player1.weapon
            @winning_message = "#{@player1.name} wins!"
          else
            @winning_message = "#{@player2.name} wins!"
        end
      end
    end
  end

  def display_game_result_and_play_again
    if @play_mode == "solo"
      erb(:play_solo)
    else
      erb(:play_multi)
    end
  end

end
