Feature: Searching phrase in bing.com
    As a user I want to search phrase "Prowly Media Monitoring" and filter results by categories

    Scenario: Simple bing.com search
        Given a web browser is on the page "bing.com"
        When user enters "Prowly Media Monitoring" in the search bar
        Then results for "Prowly Media Monitoring" are shown
        And on the first page user can see "Prowly.com"

    Scenario Outline: Filtering results
        Given results for "Prowly Media Monitoring" are shown
        When user chooses category "<category>"
        Then result for "Prowly Media Monitoring" filtered by category "<category>" are shown

        Examples:
        | category  |
        | Images    |
        | Videos    |
        | Maps      |
        | News      |
