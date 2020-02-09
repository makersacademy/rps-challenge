feature 'player_options' do

  
  scenario 'first_player_picks_a_weapon' do
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowser'
    click_button 'Submit'
    click_button 'Lets Play!'
    expect(page).to have_content 'Mario, Pick Your Weapon'
  end

  scenario 'second_player_picks_a_weapon' do
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowser'
    click_button 'Submit'
    click_button 'Lets Play!'
    click_button 'Submit'
    expect(page).to have_content "Bowser, Pick Your Weapon"
  end 
end
