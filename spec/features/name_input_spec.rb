feature 'user inputs there name' do
  scenario 'user name is displauyed' do
    visit('/')
    fill_in('name', with: 'Dec')
    click_button('submit')
    expect(page).to have_content('Player: Dec')
  end
end
