feature 'Play' do

  scenario "page to display players name" do
    sign_in
    expect(page).to have_content "Jazz"
  end

  scenario "Player can select Rock, Paper or Scissors" do
    sign_in
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

end
