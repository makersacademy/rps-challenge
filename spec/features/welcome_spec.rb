feature 'Welcome menu', type: :feature do
  scenario 'one player, classic' do
    visit("/")
    expect(page).to have_content "Welcome"
    expect(page).to have_content "First"
  end

  scenario 'multiplayer, classic' do
    visit("/")
    choose("two")
    choose("classic")
    expect(page).to have_content "Welcome"
    expect(page).to have_content "Second"
  end
end
