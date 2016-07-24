describe 'Enter Names' do
  scenario '2 player names are entered and displayed' do
    sign_in_and_play
    expect(page).to have_content "Jonny vs. Santa Claus"
  end
end
