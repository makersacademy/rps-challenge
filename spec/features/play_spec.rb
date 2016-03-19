feature 'Play Screen' do

  scenario 'Displays Play Screen welcome message' do
    sign_in_and_play
    expect(page).to have_content("Let's Play!")
  end


end
