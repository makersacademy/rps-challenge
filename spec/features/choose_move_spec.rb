feature 'User can choose their first move' do 
  scenario 'Player has entered their name and clicks a button to begin the game' do 
    visit '/'
    fill_in 'player_name', with: 'Dwayne'
    click_button 'Submit'
    click_button 'Born Ready!'
    click_button 'Rock'
    expect(page).to have_content 'Dwayne chose Rock'
  end
end
