feature 'sign_in form' do
  scenario 'player can sign up to play and have name displayed' do
    sign_in
    expect(page).to have_content 'Daniel vs computer!'
  end
end
