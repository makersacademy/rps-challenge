feature 'welcome page' do
  scenario 'displays welcome message' do
    visit("/")
    expect(page).to have_content("Hello and welcome to Rock Paper Scissors!")  
  end
end
