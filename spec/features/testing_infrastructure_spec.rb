feature 'Testing infr' do
  scenario 'It can work' do
    visit('/')
    expect(page).to have_content("HELLO")
end
end
