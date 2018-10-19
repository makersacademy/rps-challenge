feature 'player draws' do

let (:game) {double :game, computer_choice: 'Paper'}

  scenario 'Player can see they have lost' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content("You draw!")
  end

end
