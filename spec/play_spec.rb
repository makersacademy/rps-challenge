# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'update screen with player name' do
  scenario 'expect that player to be able to fill their name in a form and see their name after submitting it' do
    visit('/')
    fill_in('player1_name', with:'Vu')
    click_button('Submit')
    expect(page).to have_content('Vu')
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Player can pick rock paper scissors' do
  scenario 'expect player to be able to choose rock' do
    visit('/')
    fill_in('player1_name', with:'Vu')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content('You have picked: Rock')
  end
end