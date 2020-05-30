feature 'Homepage welcomes players and requests their name' do

  scenario 'homepage has a welcome message' do
    visit('/')
    expect(page).to have_content("Welcome to\nRock.Paper.Scissors")
  end

  scenario 'asks player for name' do
    visit('/')
    expect(page).to have_content("What's your name:")
  end

  scenario 'displays players names' do
    sign_in_and_play
    expect(page).to have_content("Hey Tristan, let's play!")
  end

end
