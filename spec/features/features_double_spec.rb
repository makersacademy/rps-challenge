require 'spec_helper'
require_relative './web_helpers'

RSpec.feature "pick_one page", type: :feature do
  scenario "asks player 1 to choose one option" do
    double_sign_in_and_play
    expect(page).to have_text("Eli vs Kate\nHi Eli, please choose one option")
  end
end

RSpec.feature "double_choice page", type: :feature do
  scenario "asks player 2 to choose one option" do
    double_sign_in_and_play
    find_button('Rock').click
    expect(page).to have_text("Eli vs Kate\nHi Kate, please choose one option")
  end
end

RSpec.feature "double_result page", type: :feature do
  scenario "displays both players choice" do
    double_sign_in_and_play
    find_button('Rock').click
    find_button('Paper').click
    expect(page).to have_content("Eli picked rock!\nKate picked paper!")
  end
end

RSpec.feature "result page", type: :feature do
  scenario "declares there is a draw" do
    double_sign_in_and_play
    find_button('Paper').click
    find_button('Paper').click
    expect(page).to have_content("Eli : Oh wait, there is a draw!")
  end
end

RSpec.feature "result page", type: :feature do
  scenario "declares Eli loses" do
    double_sign_in_and_play
    find_button('Paper').click
    find_button('Scissors').click
    expect(page).to have_content("Eli loses!")
  end
end

RSpec.feature "return to pick_one page", type: :feature do
  scenario "returns to the options page" do
    double_sign_in_and_play
    find_button('Rock').click
    find_button('Scissors').click
    find_button('Play again').click
    # click_button('Play again')
    expect(page).to have_content("Hi Eli, please choose one option")
  end
end
