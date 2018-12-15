feature 'player can see attack options' do
  scenario 'and choose their attack' do
    visit('/')
    fill_in :player_1_name, with: 'Samson'
    click_button 'Submit'
    message = "Samson\nChoose your attack: Rock, Paper or Scissors"
    expect(page).to have_content message
    fill_in :player_1_attack, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content "You win with Rock!"
  end
end
