feature 'results page' do

  before do
    sign_in
    click_button('ROCK')
  end

  scenario 'presents the winner of the round' do
    expect(page).to have_content 'Computer wins!'
  end
end
