feature 'Enter player' do
  scenario 'submitting name' do
    sign_in
    expect(page).to have_content "Rock, Paper, Scissors! Aga VS. Computer"
  end
end
