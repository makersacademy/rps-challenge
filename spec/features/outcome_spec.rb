describe 'Outcome page' do
  scenario 'displays the outcome of the battle' do
    visit '/home'
    fill_in "player_1_name", with: "Jonny"
    fill_in "player_2_name", with: "Santa Claus"
    click_button "Let's do this"
    click_button "I was born ready"
    click_button "Yes, I'm sure"
    click_button "..."
    expect(page).to have_content "You"
  end

  scenario 'after seeing outcome, return to first page on click' do
    visit '/home'
    fill_in "player_1_name", with: "Jonny"
    fill_in "player_2_name", with: "Santa Claus"
    click_button "Let's do this"
    click_button "I was born ready"
    click_button "Yes, I'm sure"
    click_button "..."
    click_button "I want some more!"
    expect(page).to have_content "Enter names"
  end
end
