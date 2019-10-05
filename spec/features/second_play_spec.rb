feature 'Player 2 plays' do
  scenario 'has option to select rock, paper or scissors' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Submit'
    expect(page).to have_content "James, it's your turn to select rock, paper or scissors. No peeping Jess!"
  end
end
