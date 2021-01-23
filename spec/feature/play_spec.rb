feature 'Select Rock, Paper or Scissor' do

  scenario 'present the choices' do
    visit('/')
    fill_in(:player_1_name, with:'Oscar')
    click_button('Submit')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissor'
  end

  scenario 'choose one option' do
    visit('/')
    fill_in(:player_1_name, with:'Oscar')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'You have selected Rock'
  end

end