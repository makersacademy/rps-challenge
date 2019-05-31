feature 'RPS' do
  scenario 'enter name on form and displays on next page' do
    visit '/'
    within 'form' do
      fill_in 'user_name', with: 'Anthony'
    end
    find_button('Start the game').click
    expect(page).to have_content('Anthony') 

  end
  scenario 'select a move option and page displays your choice' do
    visit '/'
    within 'form' do
      fill_in 'user_name', with: 'Anthony'
    end
    find_button('Start the game').click
    choose('scissors')
    find_button('Submit move').click
    expect(page).to have_content('Anthony chose scissors') 
  end
end
