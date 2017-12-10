require 'pry'

feature 'name entry' do
  scenario 'Submitting 1 player names' do
    visit '/'
    click_button "1 Player"
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    expect(page).to have_content "Welcome, young Gerald!"
  end
  scenario 'Player names appear on weapon selection' do
    visit '/'
    click_button "2 Player"
    fill_in 'Player1', with: "Maude"
    fill_in 'Player2', with: "Dorothy"
    click_button "Choose weapons"
    expect(page).to have_content "WEAPONS"
  end
  scenario 'Player 1s name appears on weapon selection' do
    visit '/'
    click_button "2 Player"
    fill_in 'Player1', with: "Maude"
    fill_in 'Player2', with: "Dorothy"
    click_button "Choose weapons"
    expect(page).to have_content "You choose first, Maude"
  end
  scenario 'Player 2s name appears on second weapon selection' do
    visit '/'
    click_button "2 Player"
    fill_in 'Player1', with: "Maude"
    fill_in 'Player2', with: "Dorothy"
    click_button "Choose weapons"
    fill_in 'weapon', with: "rock"
    click_button "Equip"
    expect(page).to have_content "Now you, Dorothy"
  end
end
