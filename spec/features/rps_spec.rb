require_relative './web_helper'

feature "Fill in name to start the game" do
  scenario "submit name and see them on following screen" do
    sign_in_and_play
    expect(page).to have_content "Oleg"
  end
end

feature "Player can choose Rock, Paper or Scissors" do
  scenario "After submitting the name, press to choose Rock, Paper or Scissors" do
    sign_in_and_play
    page.should have_selector(:link_or_button, 'Rock')
    page.should have_selector(:link_or_button, 'Paper')
    page.should have_selector(:link_or_button, 'Scissors')
    expect(page).to have_content "Oleg please make a choice!"
  end
end

feature "Second name appears after selection one of the items" do
  scenario "Press Rock, Paper or Scissors and see second player name on next page" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Enemy please make a choice!"
  end
end

feature "Show players selections and the winner" do
  scenario "click start to continue the game and make another selection" do
    sign_in_and_play
    click_button 'Paper'
    click_button 'Paper'
    expect(page).to have_content "Enemy selected Paper"
    expect(page).to have_content "Oleg selected Paper"
    expect(page).to have_content "Draw"
    click_button 'Play!'
    click_button 'Paper'
  end
end
