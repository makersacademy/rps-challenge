feature 'User enters name' do
  scenario 'User enters name and it is displayed on the play screen' do
    sign_in
    expect(page).to have_content("Tommy vs. Zhijian Wang (AI)")
  end
end
