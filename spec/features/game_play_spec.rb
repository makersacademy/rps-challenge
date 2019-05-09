feature 'Playing Game' do
  scenario '#presented with attack options' do
    sign_in_and_play
    expect(page).to have_content 'Choose your attack:'
    expect(page).to have_content 'Computer vs. Ana'
    select 'Rock', from: 'user_choice'
  end

end
