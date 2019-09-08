feature 'rematch' do
  scenario 'player can play again' do
    sign_in_and_play
    click_button('rock')
    click_button('CONFIRM')
    click_button('PLAY AGAIN')
    expect(page).to have_content('Pick your move, Chuck')
  end
end
