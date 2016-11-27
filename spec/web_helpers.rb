require 'spec_helper'

def sign_in
  visit "/"

  fill_in("player1_name",with: "Harley Quinn")
  fill_in("player2_name",with: "KillBill")
  click_button "Let's go!"
end
