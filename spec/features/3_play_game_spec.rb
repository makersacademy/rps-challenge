
feature 'Play game' do
  scenario '1. win' do
    start_game
    click_button('scissors')
    expect(page).to have_content("Outcome")
  end
end