# Description of Contents

The default directory structure of a generated Ruby on Rails application:

|-- app
| |-- assets
| | |-- images
| | |-- javascripts
| | `-- stylesheets | |-- controllers | |-- helpers | |-- mailers | |-- models |`-- views
| `-- layouts |-- config | |-- environments | |-- initializers |`-- locales
|-- db
|-- doc
|-- lib
| |-- assets
| `-- tasks |-- log |-- public |-- script |-- test | |-- fixtures | |-- functional | |-- integration | |-- performance |`-- unit
|-- tmp
| `-- cache |`-- assets
`-- vendor |-- assets | |-- javascripts |`-- stylesheets
`-- plugins

_app_
Holds all the code that's specific to this particular application.

_app/assets_
Contains subdirectories for images, stylesheets, and JavaScript files.

_app/controllers_
Holds controllers that should be named like weblogs_controller.rb for
automated URL mapping. All controllers should descend from
ApplicationController which itself descends from ActionController::Base.

_app/models_
Holds models that should be named like post.rb. Models descend from
ActiveRecord::Base by default.

<!-- ORM (Object relational Mapping) ActiveRecord, Sequelize -->

_app/views_
Holds the template files for the view that should be named like
weblogs/index.html.erb for the WeblogsController#index action. All views use
eRuby syntax by default.

_app/views/layouts_
Holds the template files for layouts to be used with views. This models the
common header/footer method of wrapping views. In your views, define a layout
using the layout :default and create a file named default.html.erb.
Inside default.html.erb, call <% yield %> to render the view using this
layout.

_app/helpers_
Holds view helpers that should be named like weblogs_helper.rb. These are
generated for you automatically when using generators for controllers.
Helpers can be used to wrap functionality for your views into methods.

_config_
Configuration files for the Rails environment, the routing map, the database,
and other dependencies.

_db_
Contains the database schema in schema.rb. db/migrate contains all the
sequence of Migrations for your schema.

_doc_
This directory is where your application documentation will be stored when
generated using rake doc:app

_lib_
Application specific libraries. Basically, any kind of custom code that
doesn't belong under controllers, models, or helpers. This directory is in
the load path.

_public_
The directory available for the web server. Also contains the dispatchers and the default HTML files. This should be set as the DOCUMENT_ROOT of your web
server.

_script_
Helper scripts for automation and generation.

_test_
Unit and functional tests along with fixtures. When using the rails generate
command, template test files will be generated for you and placed in this
directory.

_vendor_
External libraries that the application depends on. Also includes the plugins
subdirectory. If the app has frozen rails, those gems also go here, under
vendor/rails/. This directory is in the load path.


<!-- string (255 characters) -->
<!-- text (unlimeted characters) -->
<!-- int -->

<!-- datetime -->
<!-- float -->
<!-- json -->


# Model generation
rails g model ModelName attribute:datatype

rails g migration add_attribute_name_to_model attribute:datatype

rails db:migrate # to generate the schema file


<!-- MVC -->

# root page ( dashboard of the post )
# post
  - new
  - create
  - edit
  - updated
  - destroy

# Controller
  - rails g controller Posts
  - rails g controller Posts index new edit create update destroy
    <!-- Restful -->
    - index # Post.all to display all the record of any determine object (V) (GET)
    - new # Post.new (V) (GET)
    - create # Post.new (POST) (NV)
    - edit # Post.find(id) (GET) (V)
    - update # Post.find(id) && Post.update (NV) (PUT)
    - destroy # Post.destroy (NV) (DELETE)


rails routes
  - Display all the route that the config/routes.rb has.

<!-- posts_index  GET  /posts/index(.:format)            posts#index -->
<!-- <a href="<%= posts_index_path %>" >Dashboard</a> -->


# Post
  rails g model Post title content:text
  # has_many :comments
  - title:string
  - content:text


# Comment
  rails g model Comment post:references content:text
  # belongs_to :post
  - post_id:int
  - content:text