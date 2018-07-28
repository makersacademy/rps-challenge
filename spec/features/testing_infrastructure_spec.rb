feature 'Testing infrastructure' do
  scenario 'Can run the game and check infrastructure' do
    visit('/')
    expect(page).to have_content "Rock - Paper - Scissors"
  end
end
