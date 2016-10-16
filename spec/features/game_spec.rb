require "spec_helper"
require_relative './web_helpers'

feature "Player enters username and is ready to play" do
  scenario "Rock, Paper and Scissor options are shown" do
    sign_in
    expect(page).to have_content("Select your choice:")
  end

  scenario "The user clicks on their choice" do
    sign_in
    click_link('Rock')
    expect(page).to have_content('Rock')
  end
end
