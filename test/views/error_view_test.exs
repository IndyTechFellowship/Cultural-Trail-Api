defmodule CulturalTrailApi.ErrorViewTest do
  use CulturalTrailApi.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.html" do
    assert render(CulturalTrailApi.ErrorView, "404.json", []) == %{errors: %{message: "Not Found"}}
  end

  test "render 500.html" do
    assert render(CulturalTrailApi.ErrorView, "500.json", []) == %{errors: %{message: "Server Error"}}
  end

  test "render any other" do
    assert render(CulturalTrailApi.ErrorView, "505.json", []) == %{errors: %{message: "Server Error"}}
  end
end
