feature 'can enter name at root directory' do
  scenario 'home page allows you to register your name' do
    visit '/'
    fill_in(:player_1_name, with: 'Kane')
    click_button('Begin game')
    expect(page).to have_content 'Welcome Kane!'
  end
end