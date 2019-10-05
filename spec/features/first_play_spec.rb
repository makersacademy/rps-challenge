feature 'Player 1 plays' do
  scenario 'has option to select rock, paper or scissors' do
    sign_in_and_play
    click_button 'Start game'
    expect(page).to have_content "Jess, it's your turn to select rock, paper or scissors. No peeping James!"
  end
end
