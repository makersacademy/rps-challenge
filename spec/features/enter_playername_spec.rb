# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'enter Player1 name' do
  scenario 'submit Player1 name' do
    sign_in
    expect(page).to have_content 'The Hulk'
  end
end
