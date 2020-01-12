class RPSGame 

  attr_reader  :players_answer, :player_1

  def initialize(player_1) # game object is initialized with a player 
    @player_1 = Player.new(player_1)
    @player_1_wins = [ # 3/9  or 1/3 chance of player winning - winning combos
      { :player_1 => 'Paper', :lucy_the_computer => 'Rock' },
      { :player_1 => 'Scissors', :lucy_the_computer => 'Paper' },
      { :player_1 => 'Rock', :lucy_the_computer => 'Scissors' }
    ]
  end

  def computer_selection # generates randomly
    ['Paper', 'Rock', 'Scissors'].sample 
  end

  def player_selection(players_answer) # takes player's selection and saves it to the instance variable @players_answer
    @players_answer = players_answer
  end
  
  def play(player_1_selection, lucy_the_computer_selection) 
    if player_1_selection == lucy_the_computer_selection
      return "Hmm. It's a tie this time"
    else
      @player_1_wins.each do | option |
        return "Congratulations! You beat Lucy the Computer!!!" if player_1_selection == option[:player_1] && lucy_the_computer_selection == option[:lucy_the_computer]
      end
     "Bad luck! You were beaten this time"
    end
  end

  def self.create(player_1) # a method prefixed with self is a class method  #create() is a class method
    @rpsgame = RPSGame.new(player_1)
  end

  def self.instance  # instance is also a class method
    @rpsgame # because these are class methods - they can both access the same class instance variable 
  end

  

  

end  