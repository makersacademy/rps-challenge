feature 'Enter weapons' do

  scenario 'player 1 and 2 enters weapon' do
    sign_in_and_play_2_player
    fill_in :p1_weapon, with: 'rock'
    click_button 'Submit'
    fill_in :p2_weapon, with: 'paper'
    click_button 'Submit'
    expect(page).to have_content 'rock' && 'paper'
  end

  scenario 'player 1 enters weapon vs CPU' do
    visit('/')
    fill_in :p1_name, with: 'Ben'
    click_button 'Submit'
    fill_in :p1_weapon, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'rock'
  end
  
end