feature 'Enter name' do
  scenario 'user registration' do
    visit('/')
    fill_in :player, with: 'Bob'
    click_button('Play')
    expect(page).to have_content 'Bob vs. Computer'
  end
end