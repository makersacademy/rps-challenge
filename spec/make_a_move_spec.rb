feature 'player can enter their choice and play against computer' do
  scenario 'enter r' do
    visit('/play')
    fill_in :rockpaperscissors, with: 'r'
    expect(page).to have_content ''
  end
end
