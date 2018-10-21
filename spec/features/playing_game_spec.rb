feature 'Rock Paper scissors' do
  scenario 'i can choose rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content "Balboa chose Rock!"
  end
end
