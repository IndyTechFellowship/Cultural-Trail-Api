defmodule CulturalTrailApi.IssueView do
  use CulturalTrailApi.Web, :view

  def render("index.json", %{issues: issues}) do
    %{data: render_many(issues, CulturalTrailApi.IssueView, "issue.json")}
  end

  def render("show.json", %{issue: issue}) do
    %{data: render_one(issue, CulturalTrailApi.IssueView, "issue.json")}
  end

  def render("issue.json", %{issue: issue}) do
    if(issue.user_id != nil) do
      %{id: issue.id,
        name: issue.name,
        description: issue.description,
        imageUrl: issue.imageUrl,
        lat: issue.lat,
        lng: issue.lng,
        priority: issue.priority,
        open: issue.open,
        reportedDate: issue.reportedDate,
        resolvedDate: issue.resolvedDate,
        reportedBy: issue.user.email}
      else
        %{id: issue.id,
          name: issue.name,
          description: issue.description,
          imageUrl: issue.imageUrl,
          lat: issue.lat,
          lng: issue.lng,
          priority: issue.priority,
          open: issue.open,
          reportedDate: issue.reportedDate,
          resolvedDate: issue.resolvedDate,
          reportedBy: ""}
    end

  end
end
