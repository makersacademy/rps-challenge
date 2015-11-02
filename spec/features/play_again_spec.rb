feature 'Rematch:' do
  scenario "player can play again after a game ends" do
    register_and_play
    click_button('Rock')
    click_button('Rematch')
    expect(page).to have_content('Choose between Rock, Paper or Scissors:')
  end
end
