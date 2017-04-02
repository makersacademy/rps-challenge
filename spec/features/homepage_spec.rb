feature 'initial sign in' do
  scenario 'user signs in with their name' do
    sign_in
    expect(page).to have_content 'Steph'
  end



end
