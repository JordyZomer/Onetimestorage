# Onetimestorage

**TODO:**

- Load URL's & Passes from listing
- Check PID state

**What is Onetimestorage?**
Onetimestorage is the object storage backend for a WIP One time secret service. 


A behaviour module for implementing the server of a client-server relation.

A GenServer is a process like any other Elixir process and it can be used to keep state, execute code asynchronously and so on. The advantage of using a generic server process (GenServer) implemented using this module is that it will have a standard set of interface functions and include functionality for tracing and error reporting. It will also fit into a supervision tree.

The GenServer behaviour abstracts the common client-server interaction. Developers are only required to implement the callbacks and functionality they are interested in.


## Installation

If [available in Hex](https://hex.pm/docs/publish) (Not yet), the package can be installed
by adding `onetimestorage` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:onetimestorage, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/onetimestorage](https://hexdocs.pm/onetimestorage).

