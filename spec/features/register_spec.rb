feature 'Enter player name' do
  scenario 'submitting name' do
    visit('/register')
    fill_in :player_1_name, with: 'Mutsa'
    fill_in :player_hand_side, with: 'Left'
    click_button 'Submit'
    expect(body).to include 'Welcome to RPS Mutsa!'
    expect(body).to include 'You have chosen to play the Left hand'
  end
end
