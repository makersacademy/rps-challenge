
feature 'entering name' do
  scenario 'user can submit name and see it on screen' do
    sign_in
    expect(page).to have_content 'James'
  end

  feature "finish sign-in" do
    scenario 'user can click a button after sign-in to play' do
      sign_in
      click_button "PLAY"
      expect(page).to have_content 'Pick one:'
    end
  end
end
