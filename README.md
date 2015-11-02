# API Docs

## Classical

User + Session are all done the 'old fashioned way' via server-rendered erb.

ROOT (/): Renders the Sign In / Sign Up forms.
POST /users will create a new user, redirect to ROOT
POST /session will create a new session, redirect to SPA page

---
## JSON

GET /current_user will return JSON object containing currently logged in user

GET /transgressions will return array of transgressions complete with confessions subarray

    ```json
    {
      transgressions: [
        {
          id: 3,
          sin_type: "Gluttony",
          description: "I love eating a whole box full of cucumbers, like a 20lb box"
          confessions: [
            {
              description: "Some description",
              occurred_at: "3 weeks ago"
            }
          ]
        }
      ]
    }
    ```

POST /transgressions will take a JSON object as such:

    ```json
    {
      authenticity_token: "osmeaksdfiohuiHDFIUSDHFUkjadfhjk324",
      transgression: {
        sin_type: "Some Sin",
        description: "Some Description"
      }
    }
    ```

    And return the created transgression as an object.

POST /transgressions/:id/confessions will take a JSON object as such:

    ```json
    {
      authenticity_token: "adsf123i478KJkhajksldfhjk0",
      confession: {
        description: "I did a thing",
        occurred_at: "2015-03-27"
      }
    }
    ```
