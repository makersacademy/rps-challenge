
feature "entering player name" do

  scenario "checks that the homepage says testing infrastructure working!" do
    visit('/test')
    expect(page).to have_content "Testing infrastructure working"
  end

  scenario "checks that the homepage has form for a name" do
    visit('/')
    expect(page).to have_field('name')
  end

  scenario "play stores names" do
    sign_in_and_play
    expect(page).to have_content 'Mew'
    save_and_open_page
  end
end
