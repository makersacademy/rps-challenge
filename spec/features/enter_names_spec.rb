# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Entering names" do
  scenario 'I can call mysekf Balboa' do
    sign_in_and_play
    expect(page).to have_content "Balboa VS"
  end
end
