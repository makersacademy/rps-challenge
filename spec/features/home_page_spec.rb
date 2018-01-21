feature '#Home Page' do
  scenario 'Should be greeted with sign in page' do
    visit '/'
    expect(page).to have_content 'Enter name to start'
  end
end
