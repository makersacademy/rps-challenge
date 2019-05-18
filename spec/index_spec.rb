feature 'Testing infrastructure' do
  scenario 'has a home page with content' do
    visit('/')

    expect(page).to have_content('Testing infrastructure working!')
  end
end
