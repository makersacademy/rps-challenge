feature "Name form" do
  scenario "User fills in his/her name." do
    sign_in_and_play
    expect(page).to have_content("Noby, let's play Rock, Paper, Scissors!")
  end
end
