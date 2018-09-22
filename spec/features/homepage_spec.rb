feature do
  scenario 'Testing page is there' do
    visit('/')
    expect(page).to have_content('Game Options')
  end
end
