# User Story 2
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  before do
    visit('/')
    fill_in(:player_name, with: 'Marketeer')
    click_button 'Submit'
  end

# User Story 2.1
# - the marketeer will be presented the choices (rock, paper and scissors)
  scenario 'options visible' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

# User Story 2.2
# - the marketeer can choose one option
  scenario 'select an option and sees selection' do
    click_button 'Rock'
    expect(page).to have_content 'You play Rock'
  end
end
  