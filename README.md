# SecureCompare for Elixir

[![hex.pm version](https://img.shields.io/hexpm/v/secure_compare.svg)](https://hex.pm/packages/secure_compare)
[![Build Status](https://travis-ci.org/plackemacher/secure_compare.svg?branch=master)](https://travis-ci.org/plackemacher/secure_compare)

A simple constant-time comparison algorithm for Elixir based on the `Devise.secure_compare` method found [here](https://github.com/plataformatec/devise/blob/69bee06ceee6280b54304928bb6e55c5064abad8/lib/devise.rb#L483).

## Installation

The package can be installed by adding `secure_compare` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:secure_compare, "~> 0.1.0"}]
end
```

## Usage

```elixir
a = "123"
b = "456"

SecureCompare.compare(a, b) # => false
````

## Alternatives
If you already include `:plug` in your deps (or phoenix which is built on plug), just use the [Plug.Crypto.secure_compare/2 function](https://hexdocs.pm/plug/Plug.Crypto.html#secure_compare/2).
