feature 'creates 2 players' do
  scenario 'inputing player names' do
    visit "/"
    fill_in :player, with: "Broseph"
    click_button "BATTLE"
    expect(page).to have_content "Hey, Broseph! You ready to play?"
  end

end
