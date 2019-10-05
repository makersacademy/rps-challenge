# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# Hints on functionality

#     the marketeer should be able to enter their name before the game (done)
#     the marketeer will be presented the choices (rock, paper and scissors) (done)
#     the marketeer can choose one option (done)
#     the game will choose a random option
#     a winner will be declared

feature 'play game' do
  scenario 'it allows player to select a move' do
    sign_in_p1
    expect(page).to have_button 'rock!'
    expect(page).to have_button 'paper...'
    expect(page).to have_button 'scissors?'
  end

  scenario 'the game will choose a random move' do
    sign_in_p1
    srand(2)
    click_button 'rock!'
    expect(page).to have_content "The computer's move is...rock"
  end
end

