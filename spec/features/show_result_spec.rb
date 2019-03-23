feature 'User can see result of their game' do
  scenario 'Can select rock and see selection' do
    enter_name_and_play
    click_button 'rock'
    expect(page).to have_content "rock"
  end
end

