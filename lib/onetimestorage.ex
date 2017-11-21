defmodule Onetimestorage do
  @moduledoc """
  Documentation for Passurl (One Time Secret module).
  """

  @doc """
  Client API

  ## Examples

      iex> Onetimestorage.start

  Initializes the Client API

  """
  def start do
    GenServer.start_link(__MODULE__, :ok, [])
  end


  def add_password(passurl, password) when is_binary(password) do
    GenServer.cast(passurl, {:add, password})
  end

  def delete_all_passwords(passurl) do
    GenServer.cast(passurl, {:delete_all})
  end

  def delete_password(passurl, password) do
    GenServer.cast(passurl, {:delete, password})
  end

  def list_passwords(passurl) do
    GenServer.call(passurl, {:list})
  end

  @doc """
  Server API

  Processes calls to the Server API

  """
  def init(:ok) do
    {:ok, []}
  end
  def handle_cast({:add, password}, passwords) do
    {:noreply, [password | passwords]}
  end

  def handle_cast({:delete_all}, _passwords) do
    {:noreply, []}
  end

  def handle_cast({:delete, password}, passwords) do
    {:noreply, passwords -- [password]}
  end

  def handle_call({:list}, _from, passwords) do
    {:reply, passwords, passwords}
  end
end
