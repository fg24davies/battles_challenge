
def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Flora'
  fill_in 'player_2', with: 'Lily'
  click_button 'Submit'
end 