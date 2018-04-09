require './lib/roshambo.rb'

def sign_in_and_play
  visit("/")
  fill_in :player1, with: "Testplayer"
  click_button "Submit"
end

def newroll
  p @newgame = Roshambo.new(session[:P1RPS])
  p @newgame.roll
end

def evaluroll
  # @newgame.evaluate

end
