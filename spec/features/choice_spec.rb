feature 'Choose between Rock, Paper, Scissors' do
  scenario 'Anna choose rock, see rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Anna: Rock'
  end

  scenario 'Anna choose paper, see paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'Anna: Paper'
  end

  scenario 'Anna choose paper, see paper' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content 'Anna: Scissors'
  end

end
