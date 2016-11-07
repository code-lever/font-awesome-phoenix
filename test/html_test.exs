defmodule FontAwesomePhoenix.HTMLTest do
  use ExUnit.Case, async: true
  doctest FontAwesomePhoenix.HTML
  alias FontAwesomePhoenix.HTML

  test "fa_icon w/name and classes with whitespace" do
    result = HTML.fa_icon("camera-retro     4x", class: "other      more")
    expected = [?<, "i", " class=\"fa fa-camera-retro fa-4x other more\"", ?>, "", ?<, ?/, "i", ?>]
    assert {:safe, expected} == result
  end

  test "fa_icon w/nil class" do
    result = HTML.fa_icon("usb", class: nil)
    expected = [?<, "i", " class=\"fa fa-usb\"", ?>, "", ?<, ?/, "i", ?>]
    assert {:safe, expected} == result
  end

  test "fa_icon w/empty class" do
    result = HTML.fa_icon("usb", class: "")
    expected = [?<, "i", " class=\"fa fa-usb\"", ?>, "", ?<, ?/, "i", ?>]
    assert {:safe, expected} == result
  end

  test "fa_icon w/whitespace class" do
    result = HTML.fa_icon("usb", class: "  ")
    expected = [?<, "i", " class=\"fa fa-usb\"", ?>, "", ?<, ?/, "i", ?>]
    assert {:safe, expected} == result
  end

  test "fa_icon w/nil text" do
    result = HTML.fa_icon("usb", text: nil)
    expected = [?<, "i", " class=\"fa fa-usb\"", ?>, "", ?<, ?/, "i", ?>]
    assert {:safe, expected} == result
  end

  test "fa_icon w/empty text" do
    result = HTML.fa_icon("usb", text: "")
    expected = [?<, "i", " class=\"fa fa-usb\"", ?>, "", ?<, ?/, "i", ?>]
    assert {:safe, expected} == result
  end

  test "fa_icon w/whitespace text" do
    result = HTML.fa_icon("usb", text: "  ")
    expected = [?<, "i", " class=\"fa fa-usb\"", ?>, "", ?<, ?/, "i", ?>]
    assert {:safe, expected} == result
  end
end
