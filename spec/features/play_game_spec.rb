# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  scenario 'user chooses Rock, comp chooses Paper' do
    # Setup
    log_in_and_play
    # Exercise
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Paper")
    click_button('Rock')
    # Verification
    expect(page.find('div#page-header').text).to have_content("Results are in: Computer wins!")
  end

  scenario 'user chooses Rock, comp chooses Scissors' do
    # Setup
    log_in_and_play
    # Exercise
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Scissors")
    click_button('Rock')
    # Verification
    expect(page.find('div#page-header').text).to have_content("Results are in: Player wins!")
  end

  scenario 'user chooses Paper, comp chooses paper' do
    # Setup
    log_in_and_play
    # Exercise
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Paper")
    click_button('Paper')
    # Verification
    expect(page.find('div#page-header').text).to have_content("Results are in: Draw!")
  end

  scenario 'it tells user what computer chose' do
    log_in_and_play
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Paper")
    click_button('Rock')
    expect(page.find('div#results').text).to have_content("Computer chose Paper")
  end

  scenario 'it tells user what they chose' do
    log_in_and_play
    click_button('Rock')
    expect(page.find('div#results').text).to have_content("You chose Rock")
  end

  def log_in_and_play
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
  end
end
