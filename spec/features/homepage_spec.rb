feature 'checking homepage welcome' do 
  scenario 'can run app and check homepage welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome player!'
  end
end

feature 'enter name' do
  scenario 'player enter their name, click to register, and see their name on screen' do
    visit '/'
    fill_in(:player, with: 'Markus')
    click_button('Register')
    expect(page).to have_content 'Welcome to the game, Markus!'
  end
end