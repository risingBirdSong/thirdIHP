module Web.View.Posts.Show where
import Web.View.Prelude

data ShowView = ShowView { post :: Post }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <h1>{get #title post}</h1>
        <p>{get #body post}</p>
        <p>{timeAgo (get #createdAt post )}</p>
        <!-- <p>{get #createdAt post |> timeAgo}</p> -->
        <a href={NewCommentAction (get #id post)} > Add new Comment</a>

    |]
