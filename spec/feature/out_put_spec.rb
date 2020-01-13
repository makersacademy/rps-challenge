# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors


feature 'Choice selection' do
  scenario 'Checks that button choice is selected' do
    visit '/'
    fill_in 'name', with: "Luke"
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content('Rock')
  end
end