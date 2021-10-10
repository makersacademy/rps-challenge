feature 'Showing the winner' do
  scenario "shows 'you win', 'you lose', or 'draw'" do
    sign_in_1_player
    click_button 'rock'
    expect(page).to have_content(/^(You win|You lose|Draw)!$/)
  end
end
