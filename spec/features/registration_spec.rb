feature 'Registration' do
  scenario 'entering names' do
    visit('/')
    expect(page).to have_content 'Want to see your name in lights? Enter below...'
  end
end
