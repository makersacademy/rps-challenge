feature 'Register names' do
  scenario 'submitting names' do
    sign_in
    expect(page).to have_content "Alexi vs Computer"
  end
end
