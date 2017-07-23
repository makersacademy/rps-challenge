=begin
As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
=end

feature 'while playing game' do
  before do
    visit '/'
    fill_in :player_1_name, with: 'Genghis Khan'
    click_button 'Submit'
  end

# As a martekeer
# So that I can start the game
# I will be presented with choices (rock, paper and scissors)

  scenario 'presented choices of throws Rock, Paper, or Scissors' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'can choose one option' do
    
  end
end
