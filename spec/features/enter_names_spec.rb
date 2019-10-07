feature "Marketeer can register their name" do
  scenario "marketeer types in their name" do
    sign_in_and_play
    expect(page).to have_content "Hello Mittens!"
  end
end
