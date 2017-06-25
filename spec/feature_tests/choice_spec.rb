feature "Player's choice" do
  scenario "choosing weapon" do
    sign_in_and_play
    visit('/play')
    fill_in('choice', with: 'Scissors')
    click_button('Play')
    visit('/result')
    expect(page).to have_content('Scissors')
  end
end
