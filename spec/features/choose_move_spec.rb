feature 'User can choose their first move' do 
  scenario 'Player has entered their name and clicks a button to begin the game' do 
    enter_name_and_submit
    click_button 'Rock'
    expect(page).to have_content 'Dwayne chose Rock'
  end
end
