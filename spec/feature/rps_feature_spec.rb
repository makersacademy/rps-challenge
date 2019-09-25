feature 'first page content' do
  scenario 'welcome player at the beginning of the game' do
    visit('/')
    expect(page).to have_content 'Welcome to RPS!'
  end
end
