#! /usr/bin/env elixir

defmodule Cool do
  def main(args) do
    args |> parse_args |> process
  end

  def process([]) do
    IO.puts("No arguments given")
  end

  def process(options) do
    msg = "Hello #{options[:name]}"

    IO.puts(if options[:loud], do: String.upcase(msg), else: msg)
  end

  defp parse_args(args) do
    {options, args, invalid} = OptionParser.parse(args, switches: [name: :string, loud: :boolean])
    IO.inspect(args)
    IO.inspect(invalid)
    options
  end
end

Cool.main(System.argv())
