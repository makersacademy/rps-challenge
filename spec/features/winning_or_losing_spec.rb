require 'spec_helper'
require_relative 'web_helper'

feature "the computer wins" do
  scenario "the player selects rock and computer selects paper" do
    srand(1234)
    sign_in_and_select_rock
    expect(page).to have_text("AIbot is the winner!")
  end
end

feature "the player wins" do
  scenario "the player selects scissors and computer selects paper" do
    srand(2)
    sign_in_and_select_scissors
    expect(page).to have_text("Dan is the winner!")
  end
end
