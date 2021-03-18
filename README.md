# battles-flora-jack
Week 3 Afternoon challenge - Monday

On Monday - got the end of challenge 13 Using Forms
Tuesday - jack and emma pairing

# 1. The Web: An Introduction

- [x] Installed httpie
- [x] From the command line, use HTTPie to make a request to 'http://makersipsum.herokuapp.com'
        - acts as a text based browser
- [x] Explain to your partner what you see.
        - text - content of the page (in its html & css code - i.e. not displayed graphically) & the connection & server information.
- [x] Explain to your partner:
- [x] What the "client" is in this situation.
        - The command line
- [x] What the "server" is in this situation.
        - WEBrick/1.3.1 (Ruby/2.0.0/2015-04-13)
- [x] Repeat the same process in a browser.
        - It looks prettier

# 2. The Hypertext Transfer Protocol

 - [x] Use HTTPie's "-v" flag and make a request to 'http://makersipsum.herokuapp.com/'.
        - "-v" flag to output 'verbose' option i.e. more information, specifically the request
 - [x] Divide what you see into three sections:
 - [x] The request - client side (HTTPie)
 - [x] The response headers - server side
 - [x] The body of the response - server side
 - [x] For each of the above, explain to your partner which side of the client-server relationship they originate from.

# 3. HTTP: Parameters

- [x] Consider this URL: http://www.example.com/home?name=Bob&age=21. Identify the following:
- the query string
- the number of parameters in the query string
- the keys.
- the values.
- the conventions used to format query strings.
- [x] Visit 'http://makersipsum.herokuapp.com/' in the browser. Pass your name as a parameter, using "name" as the key. The page should greet you.
- [x] Revisit 'http://makersipsum.herokuapp.com/' without passing a parameter. Explain to your pair what the difference in behaviour tells you about the way the server treats the data passed as a parameter.


# 4. HTTP: GET / POST Requests

- [x] Use HTTPie's "-v" flag and make a request to 'http://getpostworkout.herokuapp.com/'.
- [x] Study the request. Decide with your pair whether it was a GET or a POST request.
      - Know its a GET or POST because of the start of the request headers
- [x] Use HTTPie and send your name as data to 'http://getpostworkout.herokuapp.com/': `http -f POST https://getpostworkout.herokuapp.com/ name=YourNameHere`
- [x] Visit 'http://getpostworkout.herokuapp.com/'. Explain to your partner what has happened to the data that you sent.
      - it got added to the list of names
- [x] Make the same "POST" request again, this time with the `-v` flag.
- [x] Explain to your partner what was different about the request headers as compared to the first step.
      - it added in content information about what we were sending.

# 5. Sinatra: Getting Started

- [x] Create a project directory with the `sinatra` gem installed via a Gemfile (if you use Ruby > 3.0, make sure the gem `webrick` is also installed globally)
- [x] Create a file for your application, `app.rb`.
- [x] Require `sinatra` at the top of the file.
- [x] Run the app from the command line: `ruby app.rb`.
- [x] Explain to your partner the significance of what you see in the terminal
    - Saw the gets requests from the browser
- [x] Use a browser to visit your application at `http://localhost:4567`

# 6. Sinatra: Defining a route

- [x] Use Sinatra's error message above to define a route that responds to incoming requests to the / path
- [x] Return the string "hello!" from this route
- [x] Check that your route works by visiting your application in the browser at the correct address.
- [x] Are you able to visit your application from a different computer? Why/why not?
        - No...

# 7. Sinatra: Start and Restart

- [x] Define a second route, get '/secret'. Have it respond with a message of your choosing.
- [x] Visit the new route in the browser. Do you see the message you wrote? If not, move on.
- [x] Kill the app on the command line with ctrl-c and run it again.
- [x] Visit the new route in the browser again. Do you see the message you wrote this time?
- [x] Manually restarting the server every time you change your code is going to get painful. Install and run your server using the shotgun gem instead. BEWARE, when you are using shotgun with Sinatra, each time your server restarts your sessions will be lost, to solve this problem you need to follow these instructions. You can also find these in the Shotgun Documentation under Caveats.
        - don't know what set :secret_sessions 'string' does
        - we changed ruby 2.7.2 to support shotgun
- [x] Define a few more routes. Without killing the server, check if the routes are visitable.

# 8. Returning HTML

- [x] Define a new route, called get '/cat'.
- [x] Using this image: http://bit.ly/1eze8aE , return an HTML string from the route that displays a cat photograph surrounded by a red dashed border.

- ADDD QUOTE MARKS AROUND YOUR HTML STRINGS!!!


# 9. Views

- [x] Create a directory called views, within the same directory as your app.rb file
- [x] Create an index.erb file (a 'view file') within the views directory
- [x] Move the HTML string you wrote in app.rb ('routing file') into the view file you just created
        - with NO quotation marks now!!
- [x] Replace the HTML string in the routing file with the statement erb(:index)
- [x] Restart your server, and visit your previously-working route
- [x] Explain to your pair partner what you see.

# 10. erb

- [x] Add an h1 tag to your index.erb view file, with the words 'My name is ' inside it.
- [x] At the end of the h1 tag (before it closes), append an empty interpolated Ruby Expression using <%= %> ('ERB tags')
        - you wouldn't want to have many lines of code embedded!
- [x] Inside these ERB tags, write an expression that samples a random name from the following array: ["Amigo", "Misty", "Almond"]
- [x] Restart your server and visit the path associated with the cat route.

# 11. Keeping Views Clean

- [x] Move the expression for generating a random name into the route for your view, assigning it to an _instance variable_
- [x] Substitute the expression within the view for the instance variable instead
- [x] Visit the webpage to ensure nothing has gone wrong.

    - view logic should be limited to light conditional (if/else) and light iterators (each)
    - controller you set up with
      - @instance_variable = ruby_code
      - erb(:index)
    - in view page
      - <h1> <%= @instance_variable %> </h1>


# 12. Introducing Params

- [x] Rename your `/cat` route to `/random-cat`.
- [x] Build a new route, `/named-cat`, that does the same as `/random-cat`.
- [x] Instead of setting the `@name` instance variable equal to a sampled array, set it equal to `params[:name]`
- [x] Visit your route from a browser
- [x] Explain to your pair partner what you see
    - no parameter was added so nothing is displayed on the page
- [x] In the browser URL, add the following **query string** after the `/named-cat` path: `?name=Ashley`, and visit that page
- [x] Explain to your pair partner what you see
    - this provides a param to the controller and inputs it into the page
- [x] In the line before you assign your `@name` variable, print (`p`) the `params` of the request
- [x] Restart your server and refresh the page. Check the terminal (**server logs**) and explain to your pair partner what you see
- [x] Change parts of the **query string** within the URL bar of your browser until you can fully explain how it works to your pair partner.


# 13. Using forms

- [x] Add a `form` to the view rendered by the `/named-cat` route
- [x] Set the form `action` attribute to the `/named-cat` path
- [x] Add an `input` element within the form, with a `type` attribute of `text` and a `name` attribute of `name`
- [x] Add another `input` element within the form, with a `type` attribute of `submit` and a `value` attribute of `Submit`
- [x] Visit the page in your browser. Use the form to change the name of the cat
- [x] Using `<% if %>` within your view, conditionally render the form only if a user has not entered a name (i.e. if `@name` is empty)
- [x] Explain to your pair partner how the attributes of inputs in the form affect the query string in the URL bar when you submit the form
- [x] Modify some of the attributes of the inputs (e.g. the `name` attribute) and explain to your pair partner how this affects the query string in the URL bar when you submit the form
- [x] Print the incoming `params` to the server logs each time you visit the route
- [x] Explain to your pair partner how modifying input attributes (e.g. `name`) affects the incoming `params` hash


# 14. Posted Forms
To complete this challenge, you will need to:
- [x] Write a new get route that renders only the cat-naming form
        - new route in app.rb
- [x] Add a method attribute to your form element, with the value "post"
- [x] Change your /named-cat route to use post instead of get
- [x] Interact with your application
- [x] Observe the URL query string when you submit the form
- [x] Observe the printed params when you submit the form
- [x] Explain your observations to your pair partner.

# 15. Chrome DevTools

- [x] Open the Chrome DevTools within your browser
        - use Inspector
- [x] Switch to the Network pane of the DevTools
- [x] Interact with your application, explaining to your pair partner what is happening in the DevTools when you do so
- [x] Locate the method for each request
- [x] Locate the form data for `POST` requests

# 16. Capybara

- [x] Make sure you have installed Firefox browser on your machine (you can use `brew cask install firefox` if you haven't).
- [x] List `capybara` and `selenium-webdriver` in a Gemfile.
- [x] make sure bundle install works - you may need to manually install Xcode if you haven't already.
- [x] install Firefox GeckoDriver, `brew install geckodriver`. If Firefox does not work for you after installing GeckoDriver, it is also possible to use [gem 'chromedriver-helper'](https://github.com/flavorjones/chromedriver-helper).
- [x] Open up *PRY* and require both `capybara/dsl` and `selenium-webdriver`.
- [x] Within the REPL, `$ include Capybara::DSL`.
- [x] [Set Capybara's default driver](https://github.com/jnicklas/capybara#selecting-the-driver) to be selenium.
- [x] Use Capybara's `visit` command to take the automated browser to [http://capybaraworkout.herokuapp.com/](http://capybaraworkout.herokuapp.com/), and use the `click_link` command to click 'Start Workout!'
- [x] Refer to a [Capybara cheat sheet](https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf) and complete the Capybara workout.
- [x] Explain to your pair partner what jobs `capybara` and `selenium-webdriver` do.

# 17. Starting Battle

- [x] Start a new project directory (you could call it `Battle`)
- [x] Add dependencies for `rspec` and `sinatra` using a Gemfile, and install using `bundle`.
- [x] Add an `app.rb` file at the root.
- [x] Set up a Sinatra application called `Battle` inside `app.rb` using Sinatra's Modular Style.
- [x] Add a `config.ru` file.  Check you can use it to run your app.
- [x] Check you can visit your app's homepage in a web browser and see `Hello Battle!`.
- [x] Use the `rspec` `init` command to initialise an RSpec skeleton directory and file structure.
- [x] Check you can run `rspec` and see `0 examples, 0 failures`.


# 18. Setting up test infrastructure

- [x] Add a dependency for `capybara` to your Gemfile, and install using `bundle`.
- [x] In your `spec/spec_helper.rb` file
  - [x] Set your `RACK_ENV` to `test`.
  - [x] Require your Sinatra app file, `capybara`, `capybara/rspec` and `rspec`.
  - [x] Tell Capybara about your app class using `Capybara.app`.
- [x] In `spec/features`, write a feature test that checks that the homepage says `Testing infrastructure working!`.
        - features is a directory that will contain files of all feature tests
        - TESTS IN SPEC FILES HAVE TO BE CALLED _SPEC.RB !!!!
- [x] Run `rspec` and check that your feature test fails with `1 example, 1 failure`.
- [x] Update your app so that the homepage displays `Testing infrastructure working!`.
- [x] Run `rspec` and check that your feature test passes.

# 19. Entering the players


- [x] In `spec/features`, add a new Capybara feature test that expects players to fill in their names (in a form), submit that form, and see those names on-screen
- [x] Create a `get '/'` route that renders a`index.erb` view with a form
- [x] Point the `index.erb` form action to a `post '/names'` route
- [x] Create a `post '/names'` route that uses `params` to render a `play.erb` view that displays the names
        - params key value has to be the same as the form value and has to the same as the test value
- [x] Pass the feature test you wrote.


# 20. POST/ redirect /GET pattern
- [x] Use `enable` to enable the `session` in Sinatra
- [x] In the `post '/names'` route, store the player names in the `session`
- [x] Write a `get '/play` route that renders the `play.erb` view you already wrote
- [x] In the `get '/play'` route, extract the instance variables required by the view from the `session`
- [x] Remove the `erb :play` expression from the `post '/names'` route, and replace it with a `redirect` to the `'/play'` route
- [x] Ensure your `enter_names_spec` feature test still passes.


# 21. Viewing Hit Points

Consider the second User Story:

```
As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points
```

- [ ] Write a feature test for the User Story above
- [ ] Pass this test with minimal implementation.
