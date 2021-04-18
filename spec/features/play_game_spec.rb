feature 'testing game' do
  scenario 'player looses' do
    allow_any_instance_of(Game).to receive(:rand).and_return(1)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You loose!'
  end
  scenario 'player wins' do
    allow_any_instance_of(Game).to receive(:rand).and_return(2)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end
  scenario 'player draws' do
    allow_any_instance_of(Game).to receive(:rand).and_return(0)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "It's a draw!"
  end
end