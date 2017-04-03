feature "sign in" do

  scenario "expect player to fill in their name" do
    sign_in_and_play
    expect(page).to have_content 'Vivien'
  end

end
