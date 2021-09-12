feature 'Register name' do
  scenario 'submitting the users name before playing' do
    visit('/')
    fill_in :player, with: 'John'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Computer'
  end
end
