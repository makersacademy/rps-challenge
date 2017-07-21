feature 'Enter name' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
end
