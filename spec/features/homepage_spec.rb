feature 'Entering names' do
  scenario 'viewing homepage' do
    visit('/')
    expect(page).to have_content("Rock, Paper, Scissors")
    expect(page).to have_content("Please enter your name")
  end

  scenario 'registering name to play' do
    sign_in
    expect(page).to have_content("Welcome Sam")
  end
end
