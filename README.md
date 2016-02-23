# Font Awesome for Phoenix

[![Build Status](https://api.travis-ci.org/code-lever/font-awesome-phoenix.svg)](https://travis-ci.org/code-lever/font-awesome-phoenix)
[![Hex Version](https://img.shields.io/hexpm/v/font_awesome_phoenix.svg "Hex Version")](https://hex.pm/packages/font_awesome_phoenix)

HTML helper functions to create Font Awesome tags easily in Phoenix.  Based on the great [font-awesome-rails gem](https://github.com/bokmann/font-awesome-rails), we just couldn't live without it in Phoenix.

Please note this does not include Font Awesome itself, just helpers to make it easier to use.

## Installation

1. Add font_awesome_phoenix to your list of dependencies in `mix.exs`:

        def deps do
          [{:font_awesome_phoenix, "~> 0.1"}]
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

    <%= fa_icon(["globe", "2x"]) %>
    # <i class="fa fa-globe fa-2x"></i>

    <%= fa_icon("home", text: "Back to Home!") %>
    # <i class="fa fa-home"></i> Back to Home!

    <%= fa_icon("user-plus", text: "New User", align_tag: :right) %>
    # New User <i class="fa fa-user-plus"></i>

    <%= fa_icon("camera-retro 4x", class: "myclass") %>
    # <i class="fa fa-camera-retro fa-4x myclass"></i>

    <%= fa_icon("at", class: "x", data: [mood: :happy]) do %>
      <span class="foo">Something</span>
    <% end %>
    # <i class="fa fa-at x" data-mood="happy">
    #   <span class="foo">Something</span>
    # </i>

Passed-in text and classes are escaped, and the returned strings are marked safe. Be sure to read [the documentation too](http://hexdocs.pm/font_awesome_phoenix)!
