feature 'Choose between Rock, Paper, Scissors' do
  scenario 'Dave choose rock, see rock' do
    dave_sign_in
    click_button('Rock')
    expect(page).to have_content 'Dave: Rock'
  end

  scenario 'Dave choose paper, see paper' do
    dave_sign_in
    click_button('Paper')
    expect(page).to have_content 'Dave: Paper'
  end

  scenario 'Jim choose scisors, see scissors' do
    jim_sign_in
    click_button('Scissors')
    expect(page).to have_content 'Jim: Scissors'
  end
end
