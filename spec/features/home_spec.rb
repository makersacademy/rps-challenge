feature 'single player page' do
  scenario 'displays home message' do
    visit('/single_player')
    expect(page).to have_content 'Welcome to a magical single player experience'
  end
end
