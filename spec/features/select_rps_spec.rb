feature 'Select RPS' do

  before do
    submit_name
  end

  scenario 'players name is on the second page' do
    expect(page).to have_content 'Welcome Jane!'
  end

  scenario 'player can select rock' do
    expect(page).to have_selector(:link_or_button, "Rock")
  end

  scenario 'player can select paper' do
    expect(page).to have_selector(:link_or_button, "Paper")
  end

  scenario 'player can select scissors' do
    expect(page).to have_selector(:link_or_button, "Scissors")
  end

end
