feature 'single player page' do
  scenario 'displays home message' do
    visit('/single_player')
    expect(page).to have_content 'Welcome to a magical single player experience'
  end
end

feature 'multiplayer page' do
  scenario 'displays home message' do
    visit('/multiplayer')
    expect(page).to have_content 'Welcome to a magical multiplayer experience'
  end
end
