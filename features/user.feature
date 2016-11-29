Feature: User

  A user can add articles and comments to the blog.

  Scenario: Add a new article

    A logged in user should be able to add a new article

    Given I am a user
    And I am logged in
    And I want to add a new article
    When I visit the articles page
    Then I should see a list of articles
    When I click the link to add article
    Then I should see a form for adding articles
    When I submit the form
    Then I should see the details of the article