feature "will show player has won" do
  scenario 'player has won game' do
    sign_in_and_play
    click_button 'Scissors'
    click_button 'Submit'
    expect(page).to have_content 'You won!'
  end
end

feature "will show player has drawn" do
  scenario 'player has drawn with computer' do
    sign_in_and_play
    click_button 'Scissors'
    click_button 'Submit'
    expect(page).to have_content 'You drew!'
  end
end

feature "will show player has lost" do
  scenario 'player has lost game' do
    sign_in_and_play
    click_button 'Paper'
    click_button 'Submit'
    expect(page).to have_content 'You lost!'
  end
end
