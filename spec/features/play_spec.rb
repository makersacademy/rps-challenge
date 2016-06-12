feature 'picks a move' do
  scenario 'picks rock' do
    visit('/')
    fill_in :name, with: 'Bob'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Wins!'
  end
end
