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
  # the marketeer will be presented the choices (rock, paper and scissors)
  scenario 'player has 3 choices' do
    visit('/')
    fill_in('player_name', with: 'Bob')
    click_button('Submit')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end

  # the marketeer can choose one option
  scenario 'player can pick 1 choice' do
    visit('/')
    fill_in('player_name', with: 'Bob')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'Bob picked Rock'
  end

  # the game will choose a random option
  scenario 'computer picks a choice' do
    visit('/')
    fill_in('player_name', with: 'Bob')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'Computer picked'
  end

  # a winner will be declared

end
