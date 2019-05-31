feature 'RPS' do
  scenario 'enter name on form and displays on next page' do
    visit '/'
    within 'form' do
      fill_in 'user_name', with: 'Anthony'
    end
    find_button('Start the game').click
  end
end