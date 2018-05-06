feature "Enter player name" do
  scenario "Can submit their name" do
    sign_in_and_play
    expect(page).to have_text 'Rock, Paper or Scissors, Charlene?'
  end
end
