feature 'result' do

  scenario 'you can see who wins the match' do
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowser'
    click_button 'Submit'
    click_button 'Lets Play!'
    # player 1 action
    choose('rock_id')    
    click_button 'submit'
    # player 2 action
    choose('scissors_id')  
    click_button 'submit'
    expect(page).to have_content "Mario Wins!"
  end
end
