feature "Enter player names" do
  scenario " Players can enter their names" do
    sign_in

    expect(page).to have_content("Welcome Matt please choose a move")
  end
end
