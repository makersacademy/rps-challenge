feature 'Enter Name' do
  scenario 'Player 1 enters name' do
    visit '/'
    fill_in('name', with: 'Anna')
    click_button('Start')
    expect(page).to have_content 'Anna'
  end
end
