require 'capybara' 
require 'capybara/rspec' 
require 'rspec'
require 'web_helper' 

def game 
    visit('/') 
end


def play_game
    visit('/') 
    fill_in :name, with: 'Ben' 
    click_button 'play'
end  

def game_play
    visit('play')
end

def outcome
    visit('/game_outcome') 
    
end