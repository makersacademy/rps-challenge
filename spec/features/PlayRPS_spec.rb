feature 'RPS' do
  scenario 'enter name on form and displays on next page' do
    visit '/'
    within 'form' do
      fill_in 'name', with: 'Anthony'
    end
    find_button('Play').click
  end
end