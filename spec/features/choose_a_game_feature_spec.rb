feature 'The players can select which game they want to play' do
  scenario 'The player selects the single player RPS and is shown the start screen' do
    sign_into_the_game
    click_button 'Single Player RPS'
    expect(page).to have_content 'Welcome to Single Player RPS'
  end
end
