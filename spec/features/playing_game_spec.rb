feature 'Playing' do
  scenario 'game knows who wins each game' do
    sign_in_and_play
    choose "scissor"
    click_button 'Game on!'
    expect(page).to have_content 'played scissor'
    expect(page).to have_content (/0|1/)
  end
end
