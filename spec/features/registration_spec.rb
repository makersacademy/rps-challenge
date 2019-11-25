feature 'Registration by entering name' do
  scenario "entering the player names for registration" do
    sign_in_and_play
    expect(page).to have_content('Myra', 'Lara')
  end
end
