require './app.rb'

feature 'RPS choice' do
  scenario 'Can choose between rock, paper or scissors as their intended move' do
    sign_in_and_play
    expect(page).to have_unchecked_field('Rock')
    expect(page).to have_unchecked_field('Paper')
    expect(page).to have_unchecked_field('Scissors')
  end

  scenario 'Computer will randomly choose between rock, paper or scissors' do
    sign_in_and_play
    choose('Rock')
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    click_button('Submit')
    expect(page).to have_content('Computer has chosen Scissors')
  end
end
