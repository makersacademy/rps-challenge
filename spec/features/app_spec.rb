require 'capybara/rspec'

feature "Page displays" do
  scenario "Page should display" do
    visit '/hello'
    expect(page).to have_content "Hello World"
  end
end

feature "Start Window" do
  scenario "User can enter name and have it display" do
    visit '/'
    fill_in('player', :with => 'Bradley')
    click_button("submit")
    expect(page).to have_content "Bradley"
  end
end

feature "Player" do
  scenario "Player can choose a move" do
    visit '/'
    fill_in('player', :with => 'Bradley')
    click_button("submit")
    select("Rock")
    click_button("submit")
    expect(page).to have_content "Rock"
  end
end
