feature 'Enter Name' do
  scenario 'User can enter their name' do
    visit '/'
    fill_in :name, with: "Rachel"
    click_button 'submit'
    expect(page).to have_content "Hey Rachel!\nAre you ready to play?"
  end
end
