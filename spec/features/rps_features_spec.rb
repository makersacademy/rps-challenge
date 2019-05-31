feature 'Testing landing page' do
  scenario 'can see welcome message when on homepage' do
    visit('/')

    expect(page).to have_content 'Testing works'
  end
end
