feature 'Testing infrastructure' do
  scenario 'index shows Welcome To Rock, Paper, Scissors!' do
    visit('/')
    expect(page).to have_content "Welcome To Rock, Paper, Scissors!"
  end

  scenario 'index shows Please enter your name' do
    visit('/')
    expect(page).to have_content "Please enter your name"
  end
end
