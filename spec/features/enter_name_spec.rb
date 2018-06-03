feature 'enter a name' do
  scenario 'submit a name' do
    visit('/')
    fill_in :player_name, with: 'Dan'
    click_button 'Submit'
    expect(page).to have_content 'Dan'
  end
end
