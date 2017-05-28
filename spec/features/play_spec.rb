# As a user
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors


# The marketeer will be presented the choices (rock, paper and scissors)
feature 'play a RPS game' do
  scenario 'see all the shapes available' do
    sign_in_and_play
    expect(page).to have_content 'rock'
    expect(page).to have_content 'paper'
    expect(page).to have_content 'scissors'
  end
end
