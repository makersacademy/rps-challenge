# As a player
# So that I can keep track of my results
# I would like to add my results to the scoreboard

feature 'Stores the result' do
  scenario 'when game is over, adds result to scoreboard' do
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Rock")
    log_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Rob 1 0"
  end

  def log_in_and_play
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
  end
end
