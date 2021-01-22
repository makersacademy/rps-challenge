require 'computer_move'
require 'go'

feature 'playing a game of RPS' do
  let(:go) { Go.new(sessions) }
  let(:sessions) { { name: "Sean", move: :rock, computer_move: :rock } }


  scenario 'be able to see the move options' do
      sign_in_and_play
      expect(page).to have_button("Rock")
      expect(page).to have_button("Paper")
      expect(page).to have_button("Scissors")
  end

  scenario 'choose a move to play' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Sean you selected Rock!")
  end

  scenario 'the computer chooses a random move' do
    sign_in_and_play
    srand(2007)
    click_button 'Rock'
    expect(page).to have_content('The computer selected Paper!')
  end

  scenario 'User wins' do
    sign_in_and_play
    srand(2007)
    click_button 'Rock'
    expect(page).to have_content("You Won!")
  end
end
