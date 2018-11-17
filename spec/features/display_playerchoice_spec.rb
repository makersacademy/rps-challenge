feature 'display selection' do
  scenario 'it displays the player\'s selection' do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Rock"
  end
end
