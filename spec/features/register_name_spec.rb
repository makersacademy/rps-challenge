
# USER_STORY - 1
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Register name at home page' do
  scenario 'greets player and asks to register name' do
    # visit ('/')
    # fill_in :player_name, with: 'Bob'
    # click_button 'Register'
    register_and_play
    expect(page).to have_content 'Bob'
  end
  feature 'Says hello, #{ @player_name }, lets play' do
    scenario 'asks player to play rock, paper and scissors' do
    # visit ('/')
    # fill_in :player_name, with: 'Bob'
    # click_button 'Register'
     register_and_play
    expect(page).to have_content 'Bob, Lets play Rock X Paper X Scissors'
    end
  end
end
