feature "Start game" do

  scenario "submitting name and choosing weapong" do
    sign_in_and_play
    expect(page).to have_content "Welcome Mike! \n You have chosen ROCK!"
  end

end
