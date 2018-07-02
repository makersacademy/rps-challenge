feature 'Registering name' do
  scenario 'User can submit and see name' do
    sign_in_and_play
    expect(page).to have_content("Welcome Jenny, choose your move!")
  end
end
