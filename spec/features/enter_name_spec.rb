feature 'enter name' do

  scenario 'player enters name which is then shown on screen lit up' do
    visit('/')
    fill_in('user_input', with: 'Al')
    click_button("Light it up!")
    expect(page).to have_content 'Al'
  end

end