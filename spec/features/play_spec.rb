feature 'Play Screen' do

  let(:name){ "Paul" }

  scenario 'Displays Play Screen welcome message' do
    sign_in_and_play(name)
    expect(page).to have_content("Let's Play!")
  end

  scenario 'Has 3 buttons for rock, paper, scissors' do
    sign_in_and_play(name)
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end


end
