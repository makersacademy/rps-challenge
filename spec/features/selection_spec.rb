feature 'Selection' do
  scenario 'Can go back and change selection' do
    sign_in_and_play
    click_link 'Rock'
    click_button 'Change selection'
    expect(page).to have_content 'Hi Andrew, let\'s play!'
  end
  # scenario 'Can enter a name and see it on screen' do
  #   sign_in_and_play
  #   click_link 'Rock'
  #   click_button 'Proceed'
  #   expect(page).to have_content ''
  # end
end
