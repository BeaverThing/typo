Feature: Make Categories
  As a blog administrator
  In order to organize my posts
  I want to be able to add categories to my blog posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add categories
    Given I am on the admin categories page
    When I fill in "category_name" with "New Cat"
    And I fill in "category_keywords" with "These Are Tags"
    And I fill in "category_description" with "A New Test Category"
    And I press "Save"
    Then I should be on the admin categories new page
    Then I should see "New Cat"
