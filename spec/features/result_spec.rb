feature 'Result page' do

  moves = Player::MOVES

  before(:each) do
    sign_in_and_play
  end

  scenario '0.0. Displays player\'s choise' do
    choice_p1 = moves.sample
    click_button(choice_p1)
    visit '/result'
    expect(page).to have_content("Misa has chosen... #{choice_p1}!")
  end
end
