feature 'Play the game' do
  scenario 'win the game' do
    complete_form
    click_button 'Start Game'
    expect(page).to have_content 'Won' 
  end
  scenario 'lose the game' do
    complete_form
    click_button 'Start Game'
    expect(page).to have_content 'Lost' 
  end
  scenario 'have to choose RP or S' do

  end

end 