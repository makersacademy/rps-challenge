
feature 'Playing RPS' do

  scenario 'can allow a player to enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Steph'
  end

  scenario 'game options are displayed' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

end
