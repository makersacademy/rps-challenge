feature 'choose option' do
  scenario 'user can choose rock, paper or scissors' do
    sign_in_and_play
    choose('choice', option: 'rock')
    click_button('Submit')
    expect(page).to have_content('You chose rock,')
  end
end

feature 'choose option' do
  scenario 'computer randomly chooses rock, paper or scissors' do
    sign_in_and_play
    choose('choice', option: 'rock')
    click_button('Submit')
    expect(page).to have_content("AI chose")
  end
end