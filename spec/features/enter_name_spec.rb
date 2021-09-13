feature 'Enter names' do 
  scenario 'submitting names' do 
    input_name_and_play
    expect(page).to have_content "Welcome Goku to play press the start button below"
  end
end
