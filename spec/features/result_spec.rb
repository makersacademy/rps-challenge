feature 'Testing if we divert to /result chosing an option and play' do
  scenario 'Choose option and click play' do
    sign_in_and_play
    click_button('Play')
    expect(page).to have_content("Result displayed here")
  end
end
