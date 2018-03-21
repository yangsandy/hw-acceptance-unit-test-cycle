Feature: create movie
  
  As a movie buff that likes niche movies
  So that I can create movies by entering title
  I want see the correct result in table after I entered the information

Scenario: create movie on create movie page
  Given I am on the create movie page
  And  I fill in "Title" with "Sentimental Swordsman, Ruthless Sword"
  And  I press "Save Changes"
  Then I should be on the home page
  And I should see "Sentimental Swordsman, Ruthless Sword was successfully created."
  And I should see "More about Sentimental Swordsman, Ruthless Sword"