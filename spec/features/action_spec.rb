describe 'Action page' do
  scenario "after selecting weapon we are taken to 'action' page" do
    sign_in_and_play
    click_button "I was born ready"
    click_button "Yes, I'm sure"
    expect(page).to have_content "Action!"
  end
end
