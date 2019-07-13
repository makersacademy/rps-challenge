feature 'displays choice of RPS' do
  scenario "showing the player rock, paper or scissors" do
    sign_in_and_confirm
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
