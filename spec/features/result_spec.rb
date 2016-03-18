feature 'Result page' do

  scenario '0.0. Displays player\'s choise' do
    sign_in_and_play
    choice = ['ROCK','PAPER','SCISSORS'].sample
    click_button("#{choice}")
    visit '/result'
    expect(page).to have_content("Misa has chosen #{choice}!")
  end
end
