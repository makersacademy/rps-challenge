class Player

attr_reader :player_name, :users_choice

  def initialize(player_name)
    @player_name = player_name
  end

  def choice(users_choice)
    @users_choice = users_choice.to_sym
  end

end
