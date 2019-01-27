feature 'Testing welcome page' do
  scenario 'Check that has game name' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock Paper Scissors!'
  end
end

feature 'Can enter name' do
  scenario 'Check that theres an enter name prompt' do
    visit('/')
    expect(page).to have_content 'Please put name in here'
  end
end
