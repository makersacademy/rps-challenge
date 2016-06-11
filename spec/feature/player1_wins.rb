feature "Player1 wins" do

  scenario '' do
    sign_in_and_play
    expect(page).to have_content "Player1, choose your hand!"
  end

end
