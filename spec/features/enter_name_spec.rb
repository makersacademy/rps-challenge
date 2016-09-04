
feature 'entering name' do
  scenario 'enter and submit name' do
    visit('/')
    fill_in(:player_name, with: 'John')
    click_button('Play')
    expect(page).to have_content('Welcome John!')
  end
end
