require_relative '../../app.rb'

def sign_in_and_play
  visit "/"
  fill_in('Player Name:', with: 'Isaac')
  click_button 'Play'
end
