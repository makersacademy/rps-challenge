require 'spec_helper'

def sign_in_and_play
  visit "/"

  fill_in("player_name",with: "Harley Quinn")
  click_button "Let's go!"
end
