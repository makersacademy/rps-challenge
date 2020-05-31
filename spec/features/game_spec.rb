feature 'enter name' do
  scenario 'player enter their name, click to register, and see their name on screen' do
    visit '/'
    fill_in(:player, with: 'Markus')
    click_button('Register')
    expect(page).to have_content 'Welcome to the game, Markus!'
  end 
end

feature 'player choice' do
  scenario 'choose paper, submit the choice, and see confirmation' do
    visit '/'
    fill_in(:player, with: 'Markus')
    click_button('Register')
    select(:option, from: 'Choice')
    expect(page).to have_content 'You chose Paper.'
  end
end