feature 'allows user to input name' do
  scenario 'expect to see username on game start' do
    visit '/'
    fill_in(:player_1, with: 'James')
    click_button('Submit')
    expect(page).to have_content('James')
  end
end
