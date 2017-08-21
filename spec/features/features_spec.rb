require 'spec_helper'
require_relative './web_helpers'

RSpec.feature "Home page", type: :feature do
  scenario "it says lets play" do
    visit "/"
    expect(page).to have_text("Let's play Rock, Paper, Scissors, Spock, Lizard!")
  end
end

RSpec.feature "pick_one page", type: :feature do
  scenario "asks user to choose one option" do
    sign_in_and_play
    expect(page).to have_text("Kate vs RPS Master\nHi Kate, please choose one option")
  end
end

RSpec.feature "result page", type: :feature do
  scenario "displays user's choice" do
    sign_in_and_play
    find_button('Rock').click
    expect(page).to have_content("You picked rock!")
  end
end

RSpec.feature "result page", type: :feature do
  scenario "displays master's choice" do
    sign_in_and_play
    find_button('Rock').click
    expect(page).to have_content("Master picked")
  end
end

RSpec.feature "return to pick_one page", type: :feature do
  scenario "returns to the options page" do
    sign_in_and_play
    find_button('Rock').click
    find_button('Play again').click
    # click_button('Play again')
    expect(page).to have_content("Kate vs RPS Master")
  end
end
