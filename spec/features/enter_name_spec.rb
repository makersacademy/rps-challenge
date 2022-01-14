feature 'Enter name' do
  
  scenario 'displays entered name' do
    sign_in_and_play
    expect(page).to have_content 'Player name: Tom'
  end

  scenario 'shows Rock buttons' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end

  scenario 'shows Paper buttons' do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end

  scenario 'shows Scissors buttons' do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end

end
