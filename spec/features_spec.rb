feature 'Register' do
  scenario 'Register and see name' do
    visit '/'
    fill_in :username, with: 'Ibrahim'
    click_button 'Register'
    expect(page).to have_content 'Ibrahim Vs. NPC'
  end
end