feature 'log in and display names' do
  scenario 'displays names for single player mode' do
    sign_in_and_play_sheldon
    expect(page).to have_content 'Player1 vs. Sheldon'
  end

  scenario 'displays names for 2 player mode' do
    sign_in_and_play_for2
    expect(page).to have_content 'Player1 vs. Player2'
  end


end
