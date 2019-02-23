class Result
  attr_reader :message

  RESULT_MESSAGES = {
    player_win: 'Truly, you are the champion.',
    player_draw: 'A draw? I THINK NOT! WE WILL BATTLE TILL TIME DOTH END!',
    player_loss: 'SUCK IT, LOSER!'
  }

  def initialize(result)
    @message = RESULT_MESSAGES[result]
  end
end
