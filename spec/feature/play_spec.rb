feature 'Select Rock, Paper or Scissor' do

  scenario 'present the choices' do
    visit('/')
    fill_in(:player_1_name, with:'Oscar')
    click_button('Submit')
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissor'
  end
  
end