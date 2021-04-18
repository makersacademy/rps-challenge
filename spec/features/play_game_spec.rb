feature 'testing game' do
  scenario 'player looses' do
    allow(Computer).to receive(:choice).and_return('paper')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You loose!'
  end
  scenario 'player wins' do
    allow(Computer).to receive(:choice).and_return('scissors')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end
  scenario 'player draws' do
    allow(Computer).to receive(:choice).and_return('rock')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "It's a draw!"
  end
end
