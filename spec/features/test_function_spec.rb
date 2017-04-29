feature 'Rock, Paper, Scissors functions' do

  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'Player chooses Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'You chose Paper'
  end

  scenario 'Player choose Scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content 'You chose Scissors'
  end
end
