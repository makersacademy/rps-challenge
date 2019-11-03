
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
# 1. the marketeer should be able to enter their name before the game
feature 'Registering Player' do
  scenario '1. Can enter name' do
    visit '/'
    fill_in 'name', with: 'Muna'
    click_button 'Submit'
    expect(page).to have_content 'Muna'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
# 1. the marketeer will be presented the choices (rock, paper and scissors)
# 2. the marketeer can choose one option
# 3. the game will choose a random option
# 4. a winner will be declared
feature 'Playing the Game' do
  before do
    visit '/'
    fill_in 'name', with: 'Muna'
    click_button 'Submit'
  end
  scenario '1. Is presented with the choices' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
