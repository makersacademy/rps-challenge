feature 'Enter name' do
  scenario 'submitting name' do
    visit('/enter-name')
    fill_in :player_name, with: "Name"
    click_button 'Submit'
    expect(page).to have_content "Name vs. Computer!"
  end
end
