feature 'Testing infrastructure' do

  scenario 'player name checking' do
    visit('/')
    expect(page).to have_content 'Test'
  end

end
