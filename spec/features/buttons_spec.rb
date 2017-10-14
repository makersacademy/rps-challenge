feature 'Testing game buttons work' do
  scenario 'Can click rock button' do
    sign_in_and_play
    click_button ('Rock')
  end

  scenario 'Can click paper button' do
    sign_in_and_play
    click_button ('Paper')
  end

  scenario 'Can click scissors button' do
    sign_in_and_play
    click_button ('Scissors')
  end
end
