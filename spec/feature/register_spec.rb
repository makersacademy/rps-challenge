# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online gamer

feature "register" do

  scenario "player registers his/her name and sees it on the screen" do
    sign_in_and_play
    expect(page).to have_content('So, Alex, ready to play?')
  end

  scenario "switch user name" do
    sign_in_and_play
    click_button('rock')
    click_link('Switch user')
    expect(page).to have_content('Hello! Please enter your name')
  end
end
