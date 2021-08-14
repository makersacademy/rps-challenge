# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'registering the name' do
  scenario 'submitting name' do
    register_and_play
    expect(page).to have_content 'John'
  end
end
