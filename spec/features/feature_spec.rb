require './app/rps_app'

describe 'Features' do

feature 'Welcoming player to page' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
# the marketeer should be able to enter their name before the game

feature 'Enter name' do
  scenario 'Player submits their name' do
    sign_in
    expect(page).to have_content 'Choose your weapon, Freya!'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
# the marketeer will be presented the choices (rock, paper and scissors)

feature 'Get a choice of attacks' do
  scenario 'Player can chose between rock, paper or scissors' do
    sign_in
    expect(page).to have_selector("input[type=submit][value='Rock']")
    expect(page).to have_selector("input[type=submit][value='Paper']")
    expect(page).to have_selector("input[type=submit][value='Scissors']")
  end
end

# the marketeer can choose one option
# the game will choose a random option

feature 'Choose an attack' do
  scenario "Player selects 'Rock'" do
    sign_in
    click_button('Rock')
    expect(page).to have_content("Freya has chosen 'Rock'")
  end
end

feature 'Computer chooses an attack' do
  scenario 'Computer selects Scissors' do
    sign_in
    click_button('Rock')
    expect(page).to have_content("The computer has has selected 'Scissors'")
  end
end

# a winner will be declared

# feature 'A winner will be declared' do
#   scenario 'The player beat the computer Rock vs Scissors' do
#     sign_in
#     click_button('Rock')
#     expect(page).to have_content("'Rock' beats 'Scissors' - Freya wins")
#   end  
# end

end
