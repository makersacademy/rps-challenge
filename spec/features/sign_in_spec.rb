feature 'Sign in' do
  scenario "The player enters their name" do
    sign_in_and_play
    expect(page).to have_content "John"
  end
end
