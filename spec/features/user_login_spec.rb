feature 'User Login' do
  scenario 'I should be able to enter and display my name' do
    visit '/'
    fill_in :player_name, with: 'Michael'
    click_button('Play!')
    expect(page).to have_content 'Michael'
  end
end
