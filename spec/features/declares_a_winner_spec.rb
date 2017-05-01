require './rps_game'

feature 'Declares a winner' do
  scenario 'Player wins' do
    allow(Computer::WEAPONS).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Result: You Win"
  end

  scenario 'Players draw' do
    allow(Computer::WEAPONS).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Result: You Draw"
  end

  scenario 'Player loses' do
    allow(Computer::WEAPONS).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Result: You Lose"
  end
end
