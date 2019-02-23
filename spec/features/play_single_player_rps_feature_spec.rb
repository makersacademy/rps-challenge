feature 'The players can select an RPS option and see the result' do
  scenario 'The player selects an option and sees what they chose' do
    sign_into_the_game
    click_button 'Single Player RPS'
    click_button 'Rock'
    expect(page).to have_content 'You selected Rock'
  end
end