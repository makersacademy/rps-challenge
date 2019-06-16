feature 'User can sign in.' do 
  scenario "Users name is stored in session" do
    sign_in_and_play
    expect(page).to have_content("Remzilla")
  end
end