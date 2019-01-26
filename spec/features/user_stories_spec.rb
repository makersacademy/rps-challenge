# User stories

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
#
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# Hints on functionality

# the marketeer should be able to enter their name before the game
# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the game will choose a random option
# a winner will be declared

feature 'Enter name' do
  scenario 'entering name when starting game' do
    sign_in
    click_button 'Play!'
    expect(page).to have_content 'Archie'
  end
end

feature 'Present choices' do
  scenario 'present player with choices' do
    visit('/')
    expect(page).to have_content 'Choose your weapon:'
  end
end

feature 'User can choose one option' do
  scenario 'user chooses rock' do
    sign_in
    choose('rock')
    click_button 'Play!'
    expect(page).to have_content 'Archie chose rock...'
  end

  scenario 'user chooses paper' do
    sign_in
    choose('paper')
    click_button 'Play!'
    expect(page).to have_content 'Archie chose paper...'
  end

  scenario 'user chooses scissors' do
    sign_in
    choose('scissors')
    click_button 'Play!'
    expect(page).to have_content 'Archie chose scissors...'
  end
end
