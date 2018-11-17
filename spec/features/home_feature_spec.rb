
feature 'home page' do
  scenario "Homepage messages" do
    visit "/"
    expect(page).to have_content("Rock Paper Scissors")
    expect(page).to have_content("Please Insert Your Name:")
    expect(page).to have_content("Please choose Your Move:")
  end
end
