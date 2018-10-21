feature 'player loses' do

  let (:computer) {double :computer, choice: 'Rock'}
  let (:game) {double :game, computer_choice: 'Rock'}
  
  scenario 'Player can see they have lost' do
    sign_in_and_play
    allow(game).to receive(:computer_choice).and_return('Paper')
    click_button('Rock')
    expect(page).to have_content("Computer put Paper You lose!")
  end

end
