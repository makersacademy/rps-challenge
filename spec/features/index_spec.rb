feature '/' do 

  scenario 'has instructions' do 
    visit "/"
    expect(page).to have_content 'Hi, please enter your name to play Rock Paper Scissors'
  end
  
  scenario 'accepts names for play computer' do 
    sign_in_and_play_computer
  end

  scenario 'accpects names for play human' do
    # visit "/"
    # fill_in :player_0_name, with: RSPEC_TEST_PLAYER_0_NAME
    # click_button 'Play Human'
    sign_in_and_play_human
  end
  
end
