describe 'VS page' do
  scenario 'entered player names are displayed' do
    sign_in_and_play
    expect(page).to have_content "Jonny vs. Santa Claus"
  end
end
