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
