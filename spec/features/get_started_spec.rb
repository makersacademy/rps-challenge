# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'See name' do
  scenario 'after you enter it' do
    enter_name_and_click_go
    expect(page).to have_content('NAME')
  end
end

# the marketeer will be presented the choices (rock, paper and scissors)

feature 'Be able to select rock' do
  scenario 'on the play page' do
    enter_name_and_click_go
    expect(page).to have_button('ROCK!')
  end
end

feature 'Be able to select paper' do
  scenario 'on the play page' do
    enter_name_and_click_go
    expect(page).to have_button('PAPER!')
  end
end

feature 'Be able to select scissors' do
  scenario 'on the play page' do
    enter_name_and_click_go
    expect(page).to have_button('SCISSORS!')
  end
end
