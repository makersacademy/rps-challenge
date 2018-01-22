feature 'Index page' do
  scenario 'It loads the name of the game' do
    visit('/')
    expect(page).to have_content 'Rock. Paper. Scissors.'
  end
end
