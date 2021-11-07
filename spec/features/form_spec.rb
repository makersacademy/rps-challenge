feature 'form' do
  scenario 'completion of form leads to new page that displays name' do
    visit('/')
    fill_in 'player_1', with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob vs Computer'
  end
end
