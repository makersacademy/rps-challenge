feature 'player fills in name' do
  scenario 'player entersname and submits' do
    visit('/')
    fill_in :name1, with: 'Jayda'
    click_button 'Submit'
    expect(page).to have_content 'Jayda'
  end
end
