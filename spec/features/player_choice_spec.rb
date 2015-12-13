#The player is able to select either Rock, Paper or Scissors
feature 'Making a choice' do
  scenario 'Does not display the results page link before both players have choosen' do
    sign_in_and_play
    expect(page).to_not have_selector(:link, 'Check who won...')
  end

  scenario "Allows the player to make a choice and displays that they've chosen" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Marketeer has chosen!'
  end

  scenario 'Displays that the computer has chosen' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content 'Computer has chosen!'
  end
end
