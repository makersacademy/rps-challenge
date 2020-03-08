
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  PLAY_SEED = 12345
  before do
      visit ('/')
      fill_in :name, with: 'James'
      click_button 'Submit'
  end
  # As a marketeer
  # So I can play a game
  # I want to see the shape options
  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As a marketeer
  # So I can play a game
  # I want to choose a shape to play
  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
  # As a marketeer
  # So I can play a game
  # I want the game to choose an option
  scenario 'game chooses "Rock"' do
    click_button 'Rock'
    # here we use find and specify css to get text from it
    message = find(:css, "#opponent").text

    expect(possible_messages).to include message
  end
  # As a marketeer
  # So I can play a game
  # I want the game to choose a random option
  scenario 'game chooses a random option' do
    # srand takes the numbers argument and seeds close to random and sample calls to random
    # each call will return the same
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content "Opponent chose Scissors!"
  end


  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
  end
end
