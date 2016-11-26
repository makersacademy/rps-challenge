require 'spec_helper'
require_relative 'web_helper'

feature "the computer wins" do
  scenario "the player selects rock and computer selects paper" do
    srand(1234)
    sign_in_and_select_rock
    expect(page).to have_text("Dan loses. AIbot Wins!")
    expect(page).to have_text("All hail AIbot your new overlord!")
  end
end
