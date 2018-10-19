class GameResult

  def self.calculate(player_choice, game_choice)
    @player_choice = player_choice
    @game_choice = game_choice
    @result = 'tie' if @player_choice == @game_choice
    when_player_picks_rock
    when_player_picks_paper
    when_player_picks_scissors
    @result
  end

  def self.when_player_picks_rock
    @result = 'win' if @player_choice == "Rock" and @game_choice == "Paper"
    @result = 'lose' if @player_choice == "Rock" and @game_choice == "Scissors"
  end

  def self.when_player_picks_paper
    @result = 'win' if @player_choice == "Paper" and @game_choice == "Scissors"
    @result = 'lose' if @player_choice == "Paper" and @game_choice == "Rock"
  end

  def self.when_player_picks_scissors
    @result = 'win' if @player_choice == "Scissors" and @game_choice == "Rock"
    @result = 'lose' if @player_choice == "Scissors" and @game_choice == "Paper"
  end
end
