feature 'player wins' do

let (:game) {double :game, computer_choice: 'Rock'}

  scenario 'Player can see they have lost' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content("You win!")
  end

end
