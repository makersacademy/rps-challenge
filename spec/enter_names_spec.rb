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
  scenario 'Player names appear on weapon selection' do
    visit '/'
    click_button "2 Player"
    fill_in 'Player1', with: "Maude"
    fill_in 'Player2', with: "Dorothy"
    click_button "Choose weapons"
    expect(page).to have_content "You choose first, Maude"
  end
end
