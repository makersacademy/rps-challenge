# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register' do
  scenario 'allow player to register name before playing' do
    visit '/'
    fill_in(:player_name, with: 'Charlie')
    click_button('Register!')
    expect(page).to have_content "Charlie"
  end
end
