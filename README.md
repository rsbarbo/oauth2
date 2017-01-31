# Rails Authentication with OAuth 2.0 and OmniAuth

### WIP :construction_worker:

The goal is to create an application able to perform authentication via social
networks with the help of the OAuth 2 protocol.

Here is a simple overview of what the application will perform when a user visits
the application homepage and tries to authenticate with a social network:

  1. User clicks “Login” link.
  2. User is redirected to the social network’s website. The application data (client_id) are sent along for identification.
  3. User sees the application details (like name, logo, description, and any additional data needed) and which actions it would like to perform on its behalf (the scope).
  4. If the user does not trust the application, they will cancel the authorization.
  5. If the user trusts the application, the authorization is approved and the user is redirected back to the application(via callback URL).

#### Raphael Barbo
