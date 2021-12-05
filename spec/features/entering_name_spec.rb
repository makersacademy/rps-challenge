feature "enter name" do
  scenario "1 player can enter his/her name and see it displayed" do
    sign_in_and_play
    expect(page).to have_content("Wednesday vs Thing")
  end
end
