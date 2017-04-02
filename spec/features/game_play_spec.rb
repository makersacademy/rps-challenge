require_relative '../../app'

feature 'be able to play the game' do
  scenario 'Page has rock paper scissors' do
    sign_in_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'Player can pick an option and get confirmation' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You chose Rock!")
  end
  scenario 'PC makes a choice' do
    sign_in_and_play
    click_button "Rock"
    click_button "Confirm"
    expect(page).to have_content "PC chose "
  end
end
