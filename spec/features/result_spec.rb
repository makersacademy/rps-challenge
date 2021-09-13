feature 'Result' do 
  scenario 'show for Rock ' do 
    input_name_and_play
    click_button("Start")
    fill_in :choice, with: "Rock"
    click_button("Submit")
    expect(rock_choice_exist).to be true 
  end

  scenario 'show for Paper' do 
    input_name_and_play
    click_button("Start")
    fill_in :choice, with: "Paper"
    click_button("Submit")
    expect(paper_choice_exist).to be true 
  end

  scenario 'show for Scissors' do 
    input_name_and_play
    click_button("Start")
    fill_in :choice, with: "Scissors"
    click_button("Submit")
    expect(scissors_choice_exist).to be true
  end
end

