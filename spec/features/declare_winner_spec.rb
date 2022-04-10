feature 'Playing the game' do
  scenario "declaring a winner and offering a 'play again' option" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_button("Play again")
  end
end
