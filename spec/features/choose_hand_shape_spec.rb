feature 'Choose hand shape' do

  scenario 'player sees a message confirming their choice of hand shape' do
    sign_in_and_play
    expect(page).to have_content "Mike, you have chosen ROCK!"
  end

end
