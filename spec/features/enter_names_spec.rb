require 'spec_helper'

feature "Enter player name:" do
  scenario "The player wants to enter his name." do
    sign_in_and_play
    expect(page).to have_content "Dylan vs. Computer"
  end
end
