feature 'The computer randomly selects from available moves' do
  scenario 'player submits name and can select their move' do
    enter_name_and_submit
    choose('Rock')
    click_button('Submit')
    page.has_content?("The computer selected #{/"Rock"|"Paper"|"Scissors"/}")
  end
end
