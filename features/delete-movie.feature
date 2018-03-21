Feature: delete movie
 
  As a movie buff that doesn't like some movies
  So that I can delete movies
  I want see the correct result in table after I delete the movie

Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director       | release_date |
  | Star Wars    | PG     | George Lucas   |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott   |   1982-06-25 |
  | Alien        | R      |                |   1979-05-25 |
  | THX-1138     | R      | George Lucas   |   1971-03-11 |
  | The Godfather| R      | Francis Coppola|   1972-03-24 |

Scenario: delete movie on details page
  Given I am on the details page for "The Godfather"
  And  I press "Delete"
  Then I should be on the home page
  And I should see "Movie 'The Godfather' deleted."
  And I should not see "More about The Godfather"