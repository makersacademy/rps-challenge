feature 'Entering player' do
  scenario 'Can enter player name in form' do
    visit('/')
    expect(page).to have_content 'Start a new game'
  end
end
