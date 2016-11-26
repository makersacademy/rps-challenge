feature 'Result after choosing hand shape' do

  scenario 'the result of choosing "rock"' do
    sign_in_and_play
    click_button 'ROCK!'
    expect(page).to have_content "Mike chose ROCK! The computer chose SCISSORS! \n MIKE WINS!!!"
  end

end
