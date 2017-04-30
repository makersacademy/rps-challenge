require './rps_game'

feature 'Declares a winner' do
  scenario 'Player wins' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Result: You Win"
  end
end
