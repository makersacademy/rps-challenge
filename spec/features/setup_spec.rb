feature '/' do
  scenario 'has a form to enter a name' do
    visit('/')
    expect(page).to have_content("Player's name:")
  end
end
