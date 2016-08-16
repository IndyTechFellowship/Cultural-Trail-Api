defmodule CulturalTrailApi.IssueController do
  use CulturalTrailApi.Web, :controller

  alias CulturalTrailApi.Issue

  plug :scrub_params, "issue" when action in [:create, :update]

  def index(conn, _params) do
    issues = Repo.all(Issue)
    issues_with_users = Repo.preload(issues, :user)
    render(conn, "index.json", issues: issues_with_users)
  end

  def create(conn, %{"issue" => issue_params}) do
    reportedDate = Timex.now() |> Timex.format!("{YYYY}-{0M}-{0D} {h24}:{m}:{s}")
    default_params = %{"reportedDate" => reportedDate, "open" => true}
    new_params = Map.merge(default_params, issue_params)
    changeset = Issue.changeset(%Issue{}, new_params)

    case Repo.insert(changeset) do
      {:ok, issue} ->
        issue = Repo.preload(issue, :user)
        conn
        |> put_status(:created)
        |> put_resp_header("location", issue_path(conn, :show, issue))
        |> render("show.json", issue: issue)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(CulturalTrailApi.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    issue = Repo.get!(Issue, id)
    issue = Repo.preload(issue, :user)
    render(conn, "show.json", issue: issue)
  end

  def update(conn, %{"id" => id, "issue" => issue_params}) do
    issue = Repo.get!(Issue, id)
    changeset = Issue.changeset(issue, issue_params)

    case Repo.update(changeset) do
      {:ok, issue} ->
        issue = Repo.preload(issue, :user)
        render(conn, "show.json", issue: issue)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(CulturalTrailApi.ChangesetView, "error.json", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    issue = Repo.get!(Issue, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(issue)

    send_resp(conn, :no_content, "")
  end
end
