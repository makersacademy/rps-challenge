# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the marketeer can choose one option
feature 'The players move will be noted' do
  scenario 'when they choose rock' do
    enter_name_and_click_go
    click_button 'ROCK!'
    expect(page).to have_content('YOU CHOSE ROCK!')
  end
  scenario 'when they choose paper' do
    enter_name_and_click_go
    click_button 'PAPER!'
    expect(page).to have_content('YOU CHOSE PAPER!')
  end
  scenario 'when they choose scissors' do
    enter_name_and_click_go
    click_button 'SCISSORS!'
    expect(page).to have_content('YOU CHOSE SCISSORS!')
  end
end

# the game will choose a random option
feature 'The bots move will be noted' do

  scenario 'when they choose paper' do
    srand(0)
    enter_name_and_click_go
    click_button 'ROCK!'
    expect(page).to have_content('YOUR OPPONENT CHOSE PAPER!')
  end

  scenario 'when they choose rock' do
    srand(1)
    enter_name_and_click_go
    click_button 'PAPER!'
    expect(page).to have_content('YOUR OPPONENT CHOSE ROCK!')
  end

  scenario 'when they choose scissors' do
    srand(4)
    enter_name_and_click_go
    click_button 'PAPER!'
    expect(page).to have_content('YOUR OPPONENT CHOSE SCISSORS!')
  end
end

# a winner will be declared

feature 'The result fo the match will be returned' do

  scenario 'when the player wins' do
    srand(2)
    enter_name_and_click_go
    click_button 'SCISSORS!'
    expect(page).to have_content('YOU WIN!')
  end

  scenario 'when the player loses' do
    srand(1)
    enter_name_and_click_go
    click_button 'SCISSORS!'
    expect(page).to have_content('YOU LOSE!')
  end
  scenario 'when there is a draw' do
    srand(4)
    enter_name_and_click_go
    click_button 'SCISSORS!'
    expect(page).to have_content("It's a draw.")
  end
end
