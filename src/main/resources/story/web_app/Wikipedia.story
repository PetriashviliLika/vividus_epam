Description: Test demoing VIVIDUS capabilities for Web Applications

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
| search-input-field | xpath(//input[@id='searchInput'])        |
| search-button      | xpath(//button[@type='submit'])           |

Scenario: Verify Wikipedia search functionality for "Automation"
Given I am on page with URL `https://www.wikipedia.org/`
When I wait until element located by `<search-input-field>` appears
When I enter `Automation` in field located by `<search-input-field>`
When I wait until element located by `<search-button>` appears
When I click on element located by `<search-button>`
Then number of elements found by `xpath(//body)` is greater than `0`
