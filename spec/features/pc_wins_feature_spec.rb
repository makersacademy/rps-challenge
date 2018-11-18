
feature 'pc wins' do
  scenario "PC victory message" do
    visit "/"
    fill_in('player_name', with: 'Cesare')
    page.select "rock" , from: "player_move"
    click_on "Play!"
    click_on "Result"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("PC Wins!")
  end
end
