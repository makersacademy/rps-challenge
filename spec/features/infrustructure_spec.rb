feature 'We want to see the home page' do
  scenario 'We want to see a welcome message' do
    visit('/')
    expect(page).to have_content("Welcome to the rock, paper, scissors game!")
  end
end