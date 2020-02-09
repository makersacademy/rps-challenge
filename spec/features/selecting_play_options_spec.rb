feature 'player_options' do

  scenario 'first player can see options' do
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowser'
    click_button 'Submit'
    click_button 'Lets Play!'
    expect(page).to have_content 'Mario, Pick Your Weapon'
  end

  scenario 'first player can select a weapon' do
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowser'
    click_button 'Submit'
    click_button 'Lets Play!'
    choose('rock_id')    
    expect(page).to have_checked_field('rock_id')
  end

  scenario 'second player picks a weapon' do
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowser'
    click_button 'Submit'
    click_button 'Lets Play!'
    choose('scissors_id')  
    click_button 'submit'
    expect(page).to have_content "Bowser, Pick Your Weapon"
  end 
end
