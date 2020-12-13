require 'spec_helper'

feature "multi player mode" do
  scenario "player can choose multi player mode" do
    visit '/'
    click_button('multi-mode')
    expect(page).to have_content('Multi Player Mode')
  end

  scenario "player can choose multi player mode" do
    visit '/'
    click_button('multi-mode')
    expect(page).to have_content('Multi Player Mode')
  end

  scenario "players can enter their names" do
    visit '/'
    click_button('multi-mode')
    fill_in 'player_1_name', with: 'Luna'
    fill_in 'player_2_name', with: 'George'
    click_on('Enter')
    expect(page).to have_content("Luna's Turn!")
  end

  scenario "player 2 can play" do
    visit '/'
    click_button('multi-mode')
    fill_in 'player_1_name', with: 'Luna'
    fill_in 'player_2_name', with: 'George'
    click_on('Enter')
    click_on('rock')
    expect(page).to have_content("George's turn")
  end

  scenario "declare winner based on the two players choices" do
    visit '/'
    click_button('multi-mode')
    fill_in 'player_1_name', with: 'Luna'
    fill_in 'player_2_name', with: 'George'
    click_on('Enter')
    click_on('rock')
    click_on('paper')
    expect(page).to have_content("George wins!")
  end
end
