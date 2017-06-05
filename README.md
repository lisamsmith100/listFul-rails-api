# listFul

  An app for making lists. I am a "lister." If you like to list as much as I do, you may find this app useful to you because you can create lists from scratch or from a template. And you can turn a list into a template.

  - Live app: [listFul](https://lisamsmith100.github.io/listFul/)
  - Live API: [listFul Rails API](https://listful-rails-api.herokuapp.com/)
  - API repo on GitHub: [lisamsmith100/listFul-rails-api](https://github.com/lisamsmith100/listFul-rails-api)

  ## About listFul

  [listFul](https://lisamsmith100.github.io/listFul/) lets users generate a list with items and generate templates with items. A list or template can be created, edited, or deleted from the browser and all actions need to be authenticated.

  listFul is built using javascript, Handlebars, HTML, and CSS and relies on a Rails API/Postgres to persist data. Code for that API can be found at lisamsmith100/listFul-rails-api](<https://github.com/lisamsmith100/listFul-rails-api>).

  ## User Stories

  As as user,…
  	I want to sign up
  	I want to sign in
  	I want to sign out
  	I want to change my password

  	I want to create a list
  	I want to save a list
  	I want to edit a list title
  	I want to delete a list
  	I want to view all of my list titles
  	I want to sort my lists
  	I want to view all of the items in a list
  	I want to add items to a list
  	I want to edit items in a list
  	I want to delete an item from a list
  	I want to have list templates by category
  	I want to categorize my lists
  	I want to sort my list items
  	I want to cross list items off
  	I want to add dates due to the list

  ### Stretch User Stories
  As a user,…
    I want to be reminded of a due date for a list item
  	I want to be reminded of a due date for a list
  	I want to add link to Google directions to a list item

  ## Data Model

  An entity relationship diagram is available [here](http://imgur.com/7ywHLky).

  Resources include:

  - Users
  - Lists
  - List Items
  - Templates
  - Template Items

  The project culminated from my wish to have an app with this functionality. The wireframes looks like this: [here](http://imgur.com/BiEzJn2).

  ## Dependencies

Install with `bundle install`.

  - [`rails-api`](https://github.com/rails-api/rails-api)
  - [`rails`](https://github.com/rails/rails)
  - [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
  - [`ruby`](https://www.ruby-lang.org/en/)
  - [`postgres`](http://www.postgresql.org)

Until Rails 5 is released, this template should follow the most recent released version of Rails 4, as well as track `master` branches for `rails-api` and `active_model_serializers`.

  ## Installation

  1. [Download](../../archive/master.zip) this template.
  2. Unzip and rename the template directory.
  3. Empty [`README.md`](README.md) and fill with your own content.
  4. Move into the new project and `git init`.
  5. Install dependencies with `bundle install`.
  6. Rename your app module in `config/application.rb` (change `RailsApiTemplate`).
  7. Rename your project database in `config/database.yml` (change `'rails-api-template'`).
  8. Create a `.env` for sensitive settings (`touch .env`).
  9. Generate new `development` and `test` secrets (`bundle exec rake secret`).
  10. Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>` respectively.
  11. In order to make requests to your deployed API, you will need to set `SECRET_KEY_BASE` in the environment of the production API (using `heroku config:set` or the Heroku dashboard).
  12. In order to make requests from your deployed client application, you will need to set `CLIENT_ORIGIN` in the environment of the production API (e.g. `heroku config:set CLIENT_ORIGIN https://<github-username>.github.io`).
  13. Setup your database with `bin/rake db:nuke_pave` or `bundle exec rake db:nuke_pave`.
  14. Run the API server with `bin/rails server` or `bundle exec rails server`.

  ### Local setup

  ```
  -   `touch .env`
  -   `SECRET_TOKEN=$(bundle exec rake secret) >> .env`
  -   `SECRET_KEY_BASE_DEVELOPMENT=$(bundle exec rake secret) >> .env`
  ```

  #### Tests

  ```
  `curl` command scripts for all actions are stored in [`scripts`](scripts) with names that
  correspond to API actions.

  Note that in order to run the script, you must run it from within the scripts directory.
  ```

  #### API

    ```
    Scripts are included in [`scripts`](scripts) to test actions.
    ```

  ## Structure

  This template follows the standard project structure in Rails 4.

  `curl` command scripts are stored in [`scripts`](scripts) with names that correspond to API actions.

  User authentication is built-in.

  ## Tasks

  Developers should run these often!

  - `bin/rake routes` lists the endpoints available in your API.
  - `bin/rake test` runs automated tests.
  - `bin/rails console` opens a REPL that pre-loads the API.
  - `bin/rails db` opens your database client and loads the correct database.
  - `bin/rails server` starts the API.
  - `scripts/*.sh` run various `curl` commands to test the API. See below.

  <!-- TODO - `rake nag` checks your code style. --> <!-- TODO - `rake lint` checks your code for syntax errors. -->

 ## API

  Use this as the basis for your own API documentation. Add a new third-level heading for your custom entities, and follow the pattern provided for the built-in user authentication documentation.

  Scripts are included in [`scripts`](scripts) to test built-in actions. Add your own scripts to test your custom API. As an alternative, you can write automated tests in RSpec to test your API.

  ### Authentication

  Verb   | URI Pattern            | Controller#Action
  ------ | ---------------------- | -----------------
  POST   | `/sign-up`             | `users#signup`
  POST   | `/sign-in`             | `users#signin`
  PATCH  | `/change-password/:id` | `users#changepw`
  DELETE | `/sign-out/:id`        | `users#signout`

  #### POST /sign-up

  Request:

  ```sh
  curl http://localhost:4741/sign-up \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "'"${EMAIL}"'",
        "password": "'"${PASSWORD}"'",
        "password_confirmation": "'"${PASSWORD}"'"
      }
    }'
  ```

  ```sh
  EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-up.sh
  ```

  Response:

  ```markdown
  HTTP/1.1 201 Created
  Content-Type: application/json; charset=utf-8

  {
    "user": {
      "id": 1,
      "email": "ava@bob.com"
    }
  }
  ```

  #### POST /sign-in

  Request:

  ```sh
  curl http://localhost:4741/sign-in \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "'"${EMAIL}"'",
        "password": "'"${PASSWORD}"'"
      }
    }'
  ```

  ```sh
  EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-in.sh
  ```

  Response:

  ```markdown
  HTTP/1.1 200 OK
  Content-Type: application/json; charset=utf-8

  {
    "user": {
      "id": 1,
      "email": "ava@bob.com",
      "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
    }
  }
  ```

  #### PATCH /change-password/:id

  Request:

  ```sh
  curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "'"${OLDPW}"'",
        "new": "'"${NEWPW}"'"
      }
    }'
  ```

  ```sh
  ID=1 OLDPW=hannah NEWPW=elle TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/change-password.sh
  ```

  Response:

  ```markdown
  HTTP/1.1 204 No Content
  ```

  #### DELETE /sign-out/:id

  Request:

  ```sh
  curl http://localhost:4741/sign-out/$ID \
    --include \
    --request DELETE \
    --header "Authorization: Token token=$TOKEN"
  ```

  ```sh
  ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/sign-out.sh
  ```

  Response:

  ```markdown
  HTTP/1.1 204 No Content
  ```

  ### Users

  Verb | URI Pattern | Controller#Action
  ---- | ----------- | -----------------
  GET  | `/users`    | `users#index`
  GET  | `/users/1`  | `users#show`

  #### GET /users

  Request:

  ```sh
  curl http://localhost:4741/users \
    --include \
    --request GET \
    --header "Authorization: Token token=$TOKEN"
  ```

  ```sh
  TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
  ```

  Response:

  ```markdown
  HTTP/1.1 200 OK
  Content-Type: application/json; charset=utf-8

  {
    "users": [
      {
        "id": 2,
        "email": "bob@ava.com"
      },
      {
        "id": 1,
        "email": "ava@bob.com"
      }
    ]
  }
  ```

  #### GET /users/:id

  Request:

  ```sh
  curl --include --request GET http://localhost:4741/users/$ID \
    --header "Authorization: Token token=$TOKEN"
  ```

  ```sh
  ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
  ```

  Response:

  ```markdown
  HTTP/1.1 200 OK
  Content-Type: application/json; charset=utf-8

  {
    "user": {
      "id": 2,
      "email": "bob@ava.com"
    }
  }
  ```

  ### Reset Database without dropping

  This is not a task developers should run often, but it is sometimes necessary.

  **locally**

  ```sh
    bin/rake db:migrate VERSION=0
    bin/rake db:migrate db:seed db:examples
  ```

  **heroku**

  ```sh
    heroku run rake db:migrate VERSION=0
    heroku run rake db:migrate db:seed db:examples
  ```

  ## [License](LICENSE)

  1. All content is licensed under a CC­BY­NC­SA 4.0 license.
  2. All software code is licensed under GNU GPLv3\. For commercial use or alternative licensing, please contact legal@ga.co.
