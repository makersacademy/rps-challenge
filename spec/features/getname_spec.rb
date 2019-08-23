feature 'Input' do
  scenario "get name" do
    visit '/'
    expect(page).to have_content("Let's get a way from the grind! Enter your name to play!")
  end
end

feature 'Welcome' do
  scenario "welcome and introduce the game" do
  visit '/'
  fill_in :name, with: "Tuyet"
  click_button 'Play'
  expect(page).to have_content("Welcome Tuyet! Let's play Rock, Paper & Scissors today!")
end
end
