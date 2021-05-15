# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter name' do
  scenario 'Player can enter their name' do
    visit('/')
    fill_in('player_name', with: 'Bob')
    click_button('Submit')
    expect(page).not_to have_content 'Player name:'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Game' do
  scenario 'player has 3 choices' do
    visit('/')
    fill_in('player_name', with: 'Bob')
    click_button('Submit')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end
end