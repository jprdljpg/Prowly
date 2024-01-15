Feature: using copilot to gather information
    As a user I want to gather information about Prowly Media Monitoring using Bing Copilot

    Scenario: Accessing through searching
    Given a web browser is on the page "bing.com"
    When user enters "What is Prowly Media Monitoring?" in the search bar
    And user chooses category "Chat"
    Then copilot is opened
    And user can see answer to "What is Prowly Media Monitoring?"
    And answer is saved in variable '(answer1)'

    Scenario: Comparing different answers
    Given a web browser is on the page "bing.com"
    When user chooses category "Chat"
    And copilot is opened
    And user enters "What is Prowly Media Monitoring?" in the search bar
    And user can see answer to "What is Prowly Media Monitoring?"
    And answer is saved in variable '(answer2)'
    Then user compares answers '(answer1)' and '(answer2)'

    Scenario Outline: Checking answer contents
    Given a web browser is on the page "Bing Copilot"
    When user enters "<question>" in the search bar
    And user can see answer to "<question>"
    Then answer contains "7 days"
    And answer contains "trial"
    And answer contains "Prowly"
    And answer contains "media monitoring"
    And answer contains "automate"
    And answer contains "PR"
    And answer contains "dashboard"
    And answer contains "alerts"

    Examples:
    | question                                |
    | What is Prowly Media Monitoring?        |
    | Prowly Media Monitoring                 |
    | Prowly Media Monitoring Module          |
    | What is Prowly Media Monitoring module? |
    | Tell me about Prowly Media Monitoring   |
