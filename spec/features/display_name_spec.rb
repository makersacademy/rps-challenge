feature 'Name display' do
  scenario 'will display player name', type: :feature do
    start_game
    expect(page).to have_content 'Marketeer'
  end
end
