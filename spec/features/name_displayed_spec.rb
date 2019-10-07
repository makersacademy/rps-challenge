feature 'name is displayed' do
  scenario 'player enters name which is displayed' do
    visit('/')
    fill_in(:player_name, with: 'Clare')
    click_button('Go!')
    expect(page).to have_content('Clare')
  end
end
