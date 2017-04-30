require "./app.rb"

feature "finds players exist" do

  scenario "finds player 1" do
    sign_in_and_play
    expect(page).to have_content("Chris")
  end

  scenario "finds opponent" do
    sign_in_and_play
    expect(page).to have_content("versus")
  end
end
