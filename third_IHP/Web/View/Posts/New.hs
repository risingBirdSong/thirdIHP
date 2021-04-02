module Web.View.Posts.New where
import Web.View.Prelude

data NewView = NewView { post :: Post }

instance View NewView where
    html NewView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">New Post</li>
            </ol>
        </nav>
        <h1>New Post</h1>
        {renderForm post}
    |]

renderForm :: Post -> Html
renderForm post = formFor post [hsx|
    {(textField #title)}
    {(textField #body)}
    {submitButton}
|]

-- question : I know that the after submitting this form for a post it'll direct to CreatePostAction, but how is this? For example I don't see a href that mentions this data 
-- like <a href={pathTo NewPostAction} >  ... index.hs that directs to this route... so is this because of the autoRouter?