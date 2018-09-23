require_relative 'web_helpers'

feature "one player decides move" do
  scenario "user attacks" do
    sign_in_and_play
    # attack
    click_button "rock"
    expect(page).to have_content "Jamie attacked with rock"
  end
end

feature 'Enter name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content 'Jamie'
  end
end
