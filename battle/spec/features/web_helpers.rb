
def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Flora'
  fill_in 'player_2', with: 'Lily'
  click_button 'Submit'
end

def after_first_attack
  sign_in_and_play
  click_button "Attaaaaaaack!" # Player1 attacks player2 on /play page
end