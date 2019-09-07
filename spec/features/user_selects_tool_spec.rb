feature 'Play a RPS game' do
  scenario 'Player 1 selects a tool and this appears on next page' do
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_text('rock')
  end
end

feature 'Player selects a tool' do
  scenario 'player selects paper and gets paper' do
    sign_in_and_play
    click_on 'paper'
    expect(page).to have_text('paper')
  end
end
