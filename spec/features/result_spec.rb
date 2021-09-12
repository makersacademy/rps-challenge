feature 'Result' do 
  scenario 'show for Rock ' do 
    input_name_and_play
    click_button("Start")
    fill_in :choice, with:("Rock")
    click_button("Submit")
    choice_exist = rock_selectors.any? do |el|
      page.has_content? el
    end
    expect(choice_exist).to be true 
  end

  scenario 'show for Paper' do 
    input_name_and_play
    click_button("Start")
    fill_in :choice, with:("Paper")
    click_button("Submit")
    expect(paper_choice_exist).to be true 
  end
  
end

