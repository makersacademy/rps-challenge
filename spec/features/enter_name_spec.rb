feature 'Enter name' do
  scenario 'User can enter name and see it' do
    visit('/')
    fill_in :player, with: 'Catriona'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Catriona!'
  end
end
