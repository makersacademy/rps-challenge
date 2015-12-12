#The player is able to select either Rock, Paper or Scissors
feature 'Making a choice' do
  scenario 'Allows the player to make a choice and displays it' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Your choice : Rock'
  end
end
