feature 'enter name' do

  scenario 'player enters name' do
    visit('/')
    fill_in('user_input', with: 'Al')
    click_button("Let's go!")
    expect(page).to have_content 'Al'
  end

end