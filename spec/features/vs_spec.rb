describe 'VS page' do
  scenario 'displays entered names' do
    sign_in_and_play
    expect(page).to have_content "Jonny vs. Santa Claus"
  end
end
