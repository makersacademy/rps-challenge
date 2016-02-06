feature 'user can register' do
  scenario 'displays users name' do
    sign_in
    expect(page).to have_content "Dave vs Computer"
  end
end