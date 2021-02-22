feature 'Name in lights' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Ken is ready to play!'
  end
end