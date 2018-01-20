feature '#Home Page' do
  scenario 'Should be greeted with sign in page' do
    visit '/'
    expect(page).to have_content 'Player Name:'
  end
end
