
feature 'arena page' do
  scenario "Moves showdown" do
    visit "/"
    fill_in('player_name', with: 'Cesare')
    page.select "rock" , from: "player_move"
    click_on "Play!"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("Cesare plays with:")
    expect(page).to have_content("PC plays with:")
    expect(page).to have_content("One more round?")
  end
end
