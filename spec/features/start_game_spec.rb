feature 'User can start the game' do 
  scenario 'Player has entered their name and clicks a button to begin the game' do 
    visit '/'
    fill_in 'player_name', with: 'Dwayne'
    click_button 'Submit'
    click_button 'Born Ready!'
    expect(page).to have_content 'You seem confident Dwayne, what are you going for?'
  end
end
