feature 'It reports a winner' do
  scenario "wins" do
    sign_in
    click_link "Rock"
    expect(page).to have_content "wins!"
  end
end