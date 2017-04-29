feature 'Enter name' do
  scenario 'Can submit a name' do
    visit '/'
    fill_in :player, with: 'Cristina'
    click_button 'Submit'
    expect(page).to have_content 'Cristina vs. Computer'
  end
end
