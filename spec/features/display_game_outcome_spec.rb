feature 'Display game outcome', type: :feature do
  scenario 'user can see if they won or lost' do
    visit('/')
    fill_in :user, with: "Luke"
    click_button "Submit"
    select("Rock", from: "move")
    click_button "Submit"
    expect(page).to have_content "!"
  end
end
