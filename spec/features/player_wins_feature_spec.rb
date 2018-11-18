
feature 'player wins' do
  scenario "Player victory message" do
    visit "/"
    fill_in('player_name', with: 'Cesare')
    page.select "rock" , from: "player_move"
    click_on "Play!"
    click_on "Result"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("Cesare Wins!")
  end
end
