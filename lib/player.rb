class Player

attr_reader :name

def name(name)
  @name = name
end

def select_weapon(player_choice)
  player_choice.to_sym
end

end
