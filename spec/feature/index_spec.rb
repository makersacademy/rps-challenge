feature 'Home page' do

  before { visit '/' }

  scenario 'has welcome' do
    expect(page).to have_content("Welcome to Rock Paper Scissors!")
  end

  scenario 'has request to enter names' do
    expect(page).to have_content("Please enter your name to get started")
  end

end
