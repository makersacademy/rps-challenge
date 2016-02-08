feature 'Enter name' do


  scenario 'allows users to submit name and see it' do
    sign_in_and_play
    expect(page).to have_content 'Gareth vs. Computer'
  end


end
