feature 'Winning or losing a game' do

  scenario 'choosing rock and winning' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Computers turn'
    expect(page).to have_content "Nabille wins!"
  end

  # scenario 'choosing rock and losing' do
  #   sign_in_and_play
  #   click_button 'Rock'
  #   expect(page).to have_content "Sorry computer wins"
  # end

end
