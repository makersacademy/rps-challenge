
feature 'playing a game' do
  PLAY_SEED = 200000

  before do
    visit '/'
    fill_in :name, with: 'Mike'
    click_button 'Submit'
  end

  scenario 'see the options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose an option' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'game chooses an option' do
    click_button 'Rock'
    message = find(:css, "#opponent").text
    expect(possible_messages).to include message
  end

  scenario 'game chooses a random option' do
    click_button 'Rock'
    srand(PLAY_SEED)
    expect(possible_messages).to have_content 'The opponent chose Scissors!'
  end

  context 'the game ends' do
    before do
      rand(PLAY_SEED)
    end

    scenario 'Player wins a game' do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario 'Player loses a game' do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario 'Player draws a game' do
      click_button 'Scissors'
      expect(page).to have_content 'Its a draw!'
    end
  end


  def possible_messages
    [:Rock, :Paper, :Scissors].map { |option| "The opponent chose #{option.to_s}!"}
  end
end
