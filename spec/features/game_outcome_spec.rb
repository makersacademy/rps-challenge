feature 'outcome of the game' do
  scenario "the winner is shown" do
    start_game
    click_button 'Rock'
    expect(page).to have_content('wins')
  end
end
