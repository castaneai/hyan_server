defmodule HyanServer.PostView do
  use HyanServer.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, HyanServer.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, HyanServer.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      thumbnail_url: post.thumbnail_url}
  end
end
