require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :result, :player, :computer, :comp_choice, :player_choice, :turn, :rand_message, :smack, :talk_smack
  def initialize(player, computer = Computer.new)
    @player = player
    @player_choice 
    @computer = computer
    @comp_choice = []
    @rand_message
    @result
    @smack
  end
  

  def run_game 
    @comp_choice.push(@computer.play)
    if @comp_choice[-1] == @player.show
      @result = "It's A Draw" 
    elsif (@comp_choice[-1] == "Scissors" && @player.show == "Paper") || (@comp_choice[-1] == "Rock" && @player.show == "Scissors") || (@comp_choice[-1] == "Paper" && @player.show == "Rock")
      @result = "I Win."
    else
      @result = "You Win."
    end
  end

  def rand_messages
    msg = ["What Will You Choose, ", "Have You Made Your Pick, ", "Are You Ready To Decide, ", "What Will It Be This Time, ",
    "Are You Ready, ", "Have You Considered Your Choice Carefully, ", "Will This Be Your Victory, ", "Do You Think This Is A Good Move, "]
    @rand_message = msg.sample
  end

  def talk_smack
    msg = ["I AM THE IRS COMING TO TAX YOUR ARSE, YOURE A FAKE BOYO AND IM GOING TO KICK YOUR GABBER", "I AM NOT WAITING FOR NOBODY, YOU'RE A FISHNET-WEARING PIECE OF SHIT AND I AM GOING TO STRANGLE YOUR TEETH", "I AM A MONEY MAKER, YOU'RE A TINY PISS TAKER AND I'M GOING TO STROKE YOUR HAIR", "I AM MYSTIC MAC, YOU'RE A FAT TWAT AND I'M GOING TO STROKE YOUR DREAMS", "I AM THE CHAMPION, YOU'RE A ROOKIE KID AND I'M GOING TO STRIKE YOUR SKULL", "I AM THE CHAMPION, YOU'RE A SHITE NOBODY AND I'M GOING TO KNOCK OUT YOUR BUM", "I AM THE RING MASTER, YOU'RE A BOGGIN KID AND I'M GOING TO SMACK YOUR BRITTLE BITCH HANDS", "I AM YOUR DADDY, YOU'RE AN UGLY ARSE AND I'M GOING TO BITE YOUR DREAMS", "I AM THE KING, YOU'RE A POOR BUM AND I'M GOING TO BREAK YOUR FACE", "I AM CONSISTENTLY KNOCKING MEN UNCONSCIOUS, YOU'RE A FRAIL FELLA AND I'M GOING TO BOUNCE YOUR SELF ESTEEM", "I AM CONSISTENTLY KNOCKING MEN UNCONSCIOUS, YOU'RE A BROKE STERIOD-HEAD AND I'M GOING TO TICKLE YOUR DREAMS", "I AM NOT WAITING FOR NOBODY, YOU'RE A SAD C-CLASS FIGHTER AND I'M GOING TO PUNCH YOUR FACE", "I AM GONNA KO YOU IN ONE ROUND, YOU'RE A TINY BOYO AND I'M GOING TO STROKE YOUR DREAMS", "I AM MYSTIC MAC, YOU'RE A PISS-WEAK FELLA AND I'M GOING TO STROKE YOUR BONES", "I AM MY OWN BOSS, YOU'RE A MASSAGE-GIVIN’ PUSSY AND I'M GOING TO POUND YOUR HAIR", "I AM IRISH BABY, YOU'RE AN ANNOYING NOBODY AND I'M GOING TO POUND YOUR BRITTLE BITCH HANDS”", "I AM YOUR WORST NIGHTMARE, YOU'RE A SHITE YANK AND I'M GOING TO PUNCH YOUR FACE", "I AM YOUR WORST NIGHTMARE, YOU'RE A TINY TIT AND I'M GOING TO TICKLE YOUR GABBER", "I AM MYSTIC MAC, YOU'RE A FRAIL STERIOD-HEAD AND I'M GOING TO DESTROY YOUR HAIR", "I AM THE MOST ACTIVE FIGHTER IN THE GAME, YOU'RE A FECKIN BREAKDANCER BITCH AND I'M GOING TO STRIKE YOUR BUM"]
    @smack = msg.sample
  end
end
