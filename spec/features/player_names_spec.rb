feature 'Player names' do
  scenario 'Submit player names' do
    get_to_game
    expect(page).to have_content 'Bob VS Computer'
  end
end
