feature 'enter and see names' do
  scenario 'shows name after entering' do
    visit '/'
    fill_in 'name', with: 'User01'
    click_button 'enter name and start game!'
    expect(page).to have_content('User01')
  end
end
