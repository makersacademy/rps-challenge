# frozen_string_literal: true

def play_normal
  visit('/')
end

def play_expanded
  visit('/')
  choose ('Expanded')
end

def play_solo
  fill_in :player_1_name, with: 'Alfred'
  click_button 'Play'
end

def play_duo
  fill_in :player_1_name, with: 'David'
  fill_in :player_2_name, with: 'Edward'
  click_button 'Play'
end
