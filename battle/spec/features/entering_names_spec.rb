require 'spec_helper'

feature 'testing entering names' do
  scenario 'players enter their names' do
    sign_in_and_play
    expect(page).to have_content "A new fight between Flora and Lily is about to start...Get Ready!"
  end
end  