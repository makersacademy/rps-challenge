require './spec/spec_helper.rb'

feature 'playing the game' do
  before do
    visit '/'
    fill_in 'name', with: 'Mike'
    click_button 'Submit'
  end
  scenario 'see the moves' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'

  end

  scenario 'chose a move' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'computer choses Rock' do
    click_button 'Rock'
    message = find(:css, "#opponent").text
    expect(posssible_moves).to include message
  end

  scenario 'computer choses a random move' do
    srand(221563)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors'
  end

  context 'game over' do
    scenario 'players wins' do
      srand(221563)
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario 'players loses' do
      srand(221563)
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario 'players loses' do
      srand(221563)
      click_button 'Scissors'
      expect(page).to have_content 'You Draw!'
    end

  end

  def posssible_moves
    [:rock, :paper, :scissors].map { |move| "Opponent chose #{move.to_s.capitalize}!"}
  end
end