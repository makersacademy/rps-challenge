feature 'player can select an attack' do
  scenario 'player can select between Rock, Paper and Scissors' do
    register_to_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'player can select Rock' do
    register_to_play
    click_button('Rock')
    expect(page).to have_content 'Godzilla you chose Rock'
  end

  scenario 'player can select Paper' do
    register_to_play
    click_button('Paper')
    expect(page).to have_content 'Godzilla you chose Paper'
  end

  scenario 'player can select Scissors' do
    register_to_play
    click_button('Scissors')
    expect(page).to have_content 'Godzilla you chose Scissors'
  end

  # scenario 'displays player victory' do
  #   register_to_play
  #   click_button('Scissors')
  #   expect(page).to have_content 'Godzilla Wins!!!'
  # end
end
