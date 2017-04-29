feature 'Choose one option' do

  scenario 'Can see the instructions' do
    sign_in_and_play
    expect(page).to have_content('Cristina, choose one from the following options to play:')
  end

  scenario 'Can see the three options' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'Can submit an option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Cristina has chosen: Rock.'
  end
end
