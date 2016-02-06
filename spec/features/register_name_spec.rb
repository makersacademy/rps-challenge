feature 'Register name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Computer'
  end
end