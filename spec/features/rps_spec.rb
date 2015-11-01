feature 'rock paper scissors game page' do

  before do
    visit('/')
    fill_in('Player 1 Name', with: 'Deon')
    click_button('Submit')
  end

  scenario "the page exists" do
    expect(current_path).to eq '/rps'
  end

  scenario "the player's name is displayed" do
    expect(page).to have_content('Deon')
  end

  scenario "there is a 'paper' button" do
    find_button('Paper').value
  end

  scenario "there is a 'rock' button" do
    find_button('Rock').value
  end

  scenario "there is a 'scissors' button" do
    find_button('Scissors').value
  end

end