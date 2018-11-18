feature 'Player takes turn' do
  scenario 'the player can select an option' do
    visit '/'
    fill_in 'name', with: 'Tomas'
    click_on 'Register'
    click_button 'Rock'
    expect(page).to have_content 'Your choice: Rock'
  end
end
