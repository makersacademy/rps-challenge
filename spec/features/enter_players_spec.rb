feature 'Register player name' do
  scenario 'submits name' do
    visit('/')
    fill_in :player_name, with: 'Bill'
    click_button 'Submit'
    expect(page).to have_content 'Bill vs. Computer'
  end
end
