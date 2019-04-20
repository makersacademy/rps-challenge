# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'entering names' do
  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Callum'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the marketeer will be presented the choices (rock, paper and scissors)

feature 'having choices' do
  scenario 'being given 3 choices (rock, paper and scissors)' do
    sign_in
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end
end

# the marketeer can choose one option

feature 'making choices' do
  scenario 'choosing rock' do
    sign_in
    click_button 'ROCK'
    expect(page).to have_content 'You chose ROCK'
  end
end

# a winner will be declared

# feature 'a winner will be declared' do
  # scenario 'a winner is declared' do
  #   sign_in
  #   click_button 'ROCK'
  #   expect(page).to have_content('YOU WON!')||('CPU WON!')||('IT WAS A DRAW!')
  # end
# end
