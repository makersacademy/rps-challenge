feature 'creates 2 players' do
  scenario 'inputing player names' do
    visit "/"
    fill_in :player1, with: "Broseph"
    fill_in :player2, with: "Rockatron"
    click_button "submit"
    expect(page).to have_content "Broseph challenges Rockatron!"
  end
end
