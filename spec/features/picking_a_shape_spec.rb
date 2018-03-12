feature 'picking a shape' do
  scenario 'seeing the options' do
    sign_in_player1_and_play
    expect(page).to have_content 'Pick Rock'
    expect(page).to have_content 'Pick Paper'
    expect(page).to have_content 'Pick Scissors'
  end
  scenario 'picking an option and seeing results' do
    sign_in_player1_and_play
    choose("shape_choice", option:  '0')
    click_on 'Play!'
    expect(page).to have_content ('Dave picked Rock')
  end
end
