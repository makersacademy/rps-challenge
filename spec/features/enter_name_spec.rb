
feature 'Enter name' do
  scenario 'return player names' do
    visit('/')
    fill_in(:player1_name, with: 'Mary')
    click_button('Start')
    expect(page).to have_content('Mary')
  end
end
