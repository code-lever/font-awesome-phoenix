defmodule FontAwesomePhoenix.HTML do
  alias Phoenix.HTML
  alias Phoenix.HTML.Tag

  @doc """

  ## Options:

    * `:text` - xxx
    * `:align_tag` - xxx, default is `:left`

  ## Examples:

      iex> FontAwesomePhoenix.HTML.fa_icon("globe")
      {:safe, ["<i class=\\"fa fa-globe\\">", "", "</i>"]}

      iex> FontAwesomePhoenix.HTML.fa_icon("home", text: "Back to Home!")
      {:safe, ["<i class=\\"fa fa-home\\">", "", "</i>", "Back to Home!"]}

      iex> FontAwesomePhoenix.HTML.fa_icon("user-plus", text: "New User", align_tag: :right)
      {:safe, ["New User", "<i class=\\"fa fa-user-plus\\">", "", "</i>"]}
  """
  def fa_icon(name, opts \\ []) do
    extra_classes = Keyword.get(opts, :class, "") |> String.split(" ")
    text = Keyword.get(opts, :text, "")
    align_tag = Keyword.get(opts, :align_tag, :left)

    Tag.content_tag(:i, "", class: tag_class_string(name, extra_classes))
    |> add_text(text, align_tag)
  end

  defp add_text({:safe, tag_strings}, text, align) do
    text
    |> String.strip
    |> HTML.html_escape
    |> _add_text(tag_strings, align)
  end
  defp _add_text({:safe, ""}, safe_tag, _), do: {:safe, safe_tag}
  defp _add_text({:safe, text}, safe_tag, :left), do: {:safe, safe_tag ++ [text]}
  defp _add_text({:safe, text}, safe_tag, :right), do: {:safe, [text] ++ safe_tag}

  defp tag_class_string(name, extra_classes) do
    (~w(fa fa-#{name}) ++ extra_classes)
    |> Enum.map(&String.strip/1)
    |> Enum.filter(&(String.length(&1) > 0))
    |> Enum.join(" ")
  end
end
