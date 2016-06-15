feature 'To login player' do
  
  scenario 'player is able to register their name before the game starts' do
    visit( '/' )
    fill_in :name, with: "Meerkat"
    click_button "Submit"
    expect(page).to have_content "Meerkat"
  end
end