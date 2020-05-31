feature 'play page' do
  scenario 'displays player name after they have entered their name and hit Submit' do
    sign_in_and_play
    expect(page).to have_content 'Steve, select your move:'
  end

  scenario 'presents player with Rock, Paper and Scissors options' do
    sign_in_and_play
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
