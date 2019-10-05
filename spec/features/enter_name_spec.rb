feature 'Enter name to sign in' do
  scenario 'See my name on the play page' do
    sign_in_and_play
    expect(page).to have_content "Make your move Nabille"
  end
end
