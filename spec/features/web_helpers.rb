# frozen_string_literal: true

def enter_name_and_play
  visit('/')
  fill_in :player_name, with: 'Kelly'
  click_button "Let's Play!"
end
