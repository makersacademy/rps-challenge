feature 'Homepage' do
  scenario 'the homepage has specific text' do
    visit('/')
    expect(page).to have_content('Welcome to Rock Paper Scissors')
  end
  
  

  scenario 'it should let you choose a one or two player game' do
    visit('/')
    expect(page).to have_button('One Player Game')
    expect(page).to have_button('Two Player Game')
  end
end
