# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register player name' do
  scenario 'submit name' do
    enter_name_and_start

    expect(page).to have_content("Rocky")
  end
end
