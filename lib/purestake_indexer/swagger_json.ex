defmodule PureStakeIndexer.SwaggerJson do
  import PureStakeIndexer

  @spec get() :: any # update this return type to be the right struct
  def get(), do: get("/swagger.json")

end
