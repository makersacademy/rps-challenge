feature 'There are buttons for each of the three options' do

  scenario 'after logged in, is a rock button' do
    sign_in
    find_button("Rock").visible?
  end
  scenario 'after logged in, is a rock button' do
    sign_in
    find_button("Paper").visible?
  end

  scenario 'after logged in, is a rock button' do
    sign_in
    find_button("Scissors").visible?
  end

end
