feature 'Computer makes random move' do
  scenario 'selects rock, paper or scissors' do
    visit('/')
    sign_in_and_play
    choose_rock
    click_button 'OK'
    expect(page).not_to have_xpath("//img[contains(@src,'question_mark.png')]")
    expect(page).to have_content('computer chose')
  end
end
