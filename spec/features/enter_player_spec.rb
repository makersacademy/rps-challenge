feature 'Enter names' do
  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Dill!! CLICK ROCK, PAPER OR SCISSORS TO BEGIN'
  end
end
