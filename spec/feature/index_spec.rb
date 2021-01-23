feature 'Home page' do

  # before {  }

  scenario 'has welcome' do
    visit '/'
    expect(page).to have_content("Welcome to Rock Paper Scissors!")
  end

  # scenario 'has request to enter names' do
  #   expect(page).to have_content("Please enter your name to get started")
  # end

  # scenario 'blah' do
  #   visit '/'
  #   expect(page.status_code).to eq 200
  # end

end
