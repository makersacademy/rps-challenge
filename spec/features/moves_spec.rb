require "./app"

feature 'playing a game' do
  PLAY_SEED = 221562

  before do
    visit("/")
    fill_in :player, with: "Manu"
    click_button "Play"
  end

  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'game chooses a random option' do
    srand(PLAY_SEED)
    click_button 'Scissors'
    expect(page).to have_content 'Computer chose Scissors!'
  end

  context 'outcome' do
    before do
      srand(PLAY_SEED)
    end

    scenario 'I win' do
      click_button 'Rock'
      expect(page).to have_content 'Manu, You win!'
    end

    scenario 'I draw' do
      click_button 'Scissors'
      expect(page).to have_content 'Manu, You draw!'
    end

    scenario 'I lose' do
      click_button 'Paper'
      expect(page).to have_content 'Manu, You lose!'
    end
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |computer_move| "Computer chose #{shape.to_s.capitalize}!" }
  end
end
