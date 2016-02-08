feature 'Player can choose which weapon they want to use' do
  scenario 'player can choose rock' do
    sign_in_with_name
    click_button('Rock')
    expect(page).to have_content('Eirik chose: Rock')
  end

  scenario 'player returns to play another game' do
    sign_in_with_name
    click_button('Rock')
    click_button 'Play again'
    expect(page).to have_content('Eirik vs. ')
  end
end
