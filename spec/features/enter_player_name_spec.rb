feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: "Human"
    click_button 'Enter Name'
    expect(page).to have_content "Human vs. Computer"
  end
end
