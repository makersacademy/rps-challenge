feature 'picking a shape' do
  scenario 'seeing the options' do
    sign_in_player1_and_play_spock
    expect(page).to have_content 'Pick Rock'
    expect(page).to have_content 'Pick Paper'
    expect(page).to have_content 'Pick Scissors'
    expect(page).to have_content 'Pick Lizard'
    expect(page).to have_content 'Pick Spock'
  end
  scenario 'picking an option and seeing results' do
    sign_in_player1_and_play_spock
    choose("shape_choice", option:  '4')
    click_on 'Play!'
    expect(page).to have_content ('Dave picked Spock')
  end
end
