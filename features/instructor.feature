Feature: Instructor

  As an instructor,  I want to add a new course offering.

  Scenario: Add a new course offering

  An Instructor should be able to add a new course offering.

    Given I am an instructor
    Given I want to add a course
    When I want to add a course as an instructor
    And I am signed in
    When I visit the course offering page
    Then I should see a form to add a course
    When I submit the form
    Then I should see the details of my new course
