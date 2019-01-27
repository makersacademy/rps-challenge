feature 'Entering names' do
  scenario 'takes you to the play page with users name' do
    visit('/')
    fill_in :player1_name, with: "Erin"
    click_button 'Go!'
    expect(page).to have_content "Player1: Erin"
  end
  scenario 'Entering second name' do 
    visit('/')
    fill_in :player1_name, with: "Erin"
    fill_in :player2_name, with: "Amanda"
    click_button 'Go!'
    click_button 'Rock'
    expect(page).to have_content "Player2: Amanda"
  end
end
