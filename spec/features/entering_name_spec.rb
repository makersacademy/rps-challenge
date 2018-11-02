# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registering name' do
  scenario 'user enters name' do
    begin_and_submit
    expect(page).to have_content 'Welcome Damo !!!'
  end
end
