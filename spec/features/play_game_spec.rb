# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  scenario 'user wins a game' do
    # Setup
    log_in_and_play
    # Exercise - user clicks rock
    find('img.rock').click
    # Verification - user wins
    expect(page).to have_content("You win!!!")
  end

  # scenario 'user loses a game' do
  #   # Setup
  #
  #   # Exercise - user clicks rock
  #
  #   # Verification - computer wins
  #
  # end

  def log_in_and_play
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
  end
end
