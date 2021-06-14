feature 'Enter names' do
  scenario 'to submit names' do
    enter_p1_name

    expect(page).to have_content "Welcome Pikachu."
  end
end
