feature 'Can play Rock Paper Scissors' do
  scenario 'Can choose an option' do
    sign_in_and_play
    fill_in :player_move, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'Fergus chooses Rock'
  end

  scenario 'Computer generates random options' do
    sign_in_and_play
    fill_in :player_move, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'Computer chooses'
  end
end
