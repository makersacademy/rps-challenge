feature 'homepage form' do
  scenario 'it has a visible form asking for player name' do
    visit '/'
    expect(page).to have_content "Name"
  end
end
