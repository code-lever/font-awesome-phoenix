# Font Awesome for Phoenix

HTML helper functions to create Font Awesome tags easily in Phoenix.  Based on the great [font-awesome-rails gem](https://github.com/bokmann/font-awesome-rails), we just couldn't live without it in Phoenix.

## Installation

1. Add font_awesome_phoenix to your list of dependencies in `mix.exs`:

        def deps do
          [{:font_awesome_phoenix, "~> 0.0.1"}]
        end

2. Add the HTML module to your `web.ex` to make it available to your templates:

        def view do
          ...
          import FontAwesomePhoenix.HTML
        end

## Basic Usage

In your templates:

    <%= fa_icon("globe") %>
    # <i class="fa fa-globe"></i>

    <%= fa_icon("home", text: "Back to Home!") %>
    # <i class="fa fa-home"></i> Back to Home!

    <%= fa_icon("user-plus", text: "New User", align_tag: :right) %>
    # New User <i class="fa fa-user-plus"></i>

Passed-in text and classes are escaped, and the returned strings are marked safe. Be sure to read [the documentation too](http://hexdocs.pm/font_awesome_phoenix)!
