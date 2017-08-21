require 'spec_helper'
require_relative './web_helpers'

RSpec.feature "Home page", type: :feature do
  scenario "it says lets play" do
    visit "/"
    expect(page).to have_text("Let's play Rock, Paper, Scissors, Spock, Lizard!")
  end
end

RSpec.feature "pick_one page", type: :feature do
  scenario "asks single player to choose one option" do
    single_sign_in_and_play
    expect(page).to have_text("Kate vs RPSSL Master\nHi Kate, please choose one option")
  end
end

RSpec.feature "result page", type: :feature do
  scenario "displays single player's choice" do
    single_sign_in_and_play
    find_button('Rock').click
    expect(page).to have_content("Kate picked rock!")
  end
end

RSpec.feature "result page", type: :feature do
  scenario "displays master's choice" do
    single_sign_in_and_play
    find_button('Rock').click
    expect(page).to have_content("Master picked")
  end
end

RSpec.feature "return to pick_one page", type: :feature do
  scenario "returns to the options page" do
    single_sign_in_and_play
    find_button('Rock').click
    find_button('Play again').click
    # click_button('Play again')
    expect(page).to have_content("Hi Kate, please choose one option")
  end
end
