feature 'Robot picks their move' do
  scenario 'Robot picks rock' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Robot picked: '
    #random element tested on move_spec.rb
  end
end
