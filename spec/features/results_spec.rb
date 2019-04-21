require 'spec_helper'

feature 'return the outcome' do
  scenario "It's a tie!" do
    add_name_and_play
    click_button('Rock')
    #stub random output to be Rock
    # player_2 = double :player_2, choice: "Rock"
    # player_2.choice
    #p2_choice = "Rock"
    expect(page).to have_content("It's a tie!")
  end
end
