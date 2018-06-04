feature 'Choose move', type: :feature do
  scenario 'user can choose move' do
    visit('/')
    fill_in :user, with: "Luke"
    click_button "Submit"
    expect(page).to have_select("move", options: ["Rock", "Paper", "Scissors"])
  end
end
