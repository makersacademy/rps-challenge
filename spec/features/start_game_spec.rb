feature 'User can start the game' do 
  scenario 'Player has entered their name and clicks a button to begin the game' do 
    enter_name_and_submit
    expect(page).to have_content 'You seem confident Dwayne, what are you going for?'
  end
end
