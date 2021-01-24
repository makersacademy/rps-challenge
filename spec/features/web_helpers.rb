# frozen_string_literal: true

PLAYER_ONE = 'Alfred'
PLAYER_TWO = 'Bruce'
PLAYER_THREE = 'Charles'
DUO_PLAYER = [PLAYER_TWO, ' vs. ', PLAYER_THREE].join

def play_normal
  visit('/')
end

def play_expanded
  visit('/')
  choose 'Expanded'
end

def play_solo
  fill_in :player_1_name, with: PLAYER_ONE
  click_button 'Play'
end

def play_duo
  fill_in :player_1_name, with: PLAYER_TWO
  fill_in :player_2_name, with: PLAYER_THREE
  click_button 'Play'
end
