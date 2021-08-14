feature "move button brings us to move page which confirms player move" do
  scenario "Can make a move and get confirmation" do
    sign_in_and_play
    fill_in('move', with: 'rock')
    click_button('GO!')
    expect(page).to have_content "Dan chose rock"
  end
end