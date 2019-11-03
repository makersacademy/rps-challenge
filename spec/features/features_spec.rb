
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
  TEST_SEED = 123
  def choices
    [:rock, :paper, :scissors].map { |choice| "The computer chose #{choice.to_s.capitalize}!" }
  end
  before do
    visit '/'
    fill_in 'name', with: 'Muna'
    click_button 'Submit'
  end

  scenario '1. Player is presented with the choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario '2. Player can choose an option' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario '3.1 Computer chooses an option' do
    click_button 'Rock'
    message = find(:css, "#computer").text
    expect(choices).to include message
  end

  scenario '3.2 Computer chooses a random option' do
    srand(TEST_SEED)
    click_button 'Rock'
    expect(page).to have_content 'The computer chose Scissors!'
  end

  context 'game ends' do
    before do
      srand(TEST_SEED)
    end

    scenario '4.1 Player wins' do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario '4.2 Player loses' do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario '4.3 Draw' do
      click_button 'Scissors'
      expect(page).to have_content 'It is a draw!'
    end
  end
end
