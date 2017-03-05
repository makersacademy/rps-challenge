
feature 'player name entry' do

  scenario 'player is welcomed to the game' do
    visit('/')
    expect(page).to have_content 'Ready to play Rock, Paper, Scissors?'
  end

  scenario 'player submits name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome, Bernard'
  end

end
