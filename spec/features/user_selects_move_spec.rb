require_relative 'web_helpers'

feature "one player decides move" do
  scenario "user attacks" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Jamie attacked with Rock"
  end
end

feature 'Enter name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content 'Jamie'
  end
end
