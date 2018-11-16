feature "Set-up" do
  scenario "A marketeer can register their name and get a confirmation message" do
    visit '/register'
    fill_in('player1', with: 'Wayne')
    click_button('Submit')
    expect(page).to have_content "Welcome Wayne!"
  end
end

feature "Player can click one of three buttons" do
  scenario "Player can click a button" do
    visit '/register'
    fill_in('player1', with: 'Wayne')
    click_button('Submit')
    click_button('Rock')
    # select('Rock', from: 'selection')
    # click_button('Submit')
    expect(page).to have_content "You chose Rock"
  end
end
