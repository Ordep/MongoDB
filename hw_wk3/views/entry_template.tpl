<!doctype HTML>
<html>
<head>
<title>Create a new post</title>
<link rel="stylesheet" type="text/css" href="../style.css" />
</head>
<body>
<div class="content">
    <div id=header>
        <div class="title">
            <h1>MongoDB</h1>
            %if (username != None):
                Welcome {{username}}        <a href="/logout">Logout</a> | <a href="/">Blog Home</a><p>
            %end
        </div>
    </div>
    <div id="main">
        <div class="center">
            <h2>{{post['title']}}</h2>
            <h3>Filed Under:
                %if ('tags' in post):
                    %for tag in post['tags'][0:1]:
                        {{tag}}
                        %for tag in post['tags'][1:]:
                        , {{tag}}
                        %end
                    %end
                %end
             </h3>
             {{!post['body']}}
            <p class="date">
                <i>Posted by {{post['author']}}</i>
                <img src="../comment.gif" alt="website template image">
                Comments:
                %if ('comments' in post):
                    %numComments = len(post['comments'])
                %else:
                    %numComments = 0
                %end
                <a href="/post/{{post['permalink']}}">({{numComments}})</a>
                <img src="../timeicon.gif" alt="website template image">
                {{post['date']}}
            </p>
            <br>
            Comments:
            <ul>
            %if ('comments' in post):
                %numComments = len(post['comments'])
            %else:
                %numComments = 0
            %end
            %for i in range(0, numComments):
                Author: {{post['comments'][i]['author']}}<br>
                {{post['comments'][i]['body']}}<br>
                <br>
            %end
            <h3>Add a comment</h3>
            <form action="/newcomment" method="POST">
                <input type="hidden" name="permalink", value="{{post['permalink']}}">
                {{errors}}
                <b>Name</b> (required)<br>
                <input type="text" name="commentName" size="60" value="{{comment['name']}}"><br>
                <b>Email</b> (optional)<br>
                <input type="text" name="commentEmail" size="60" value="{{comment['email']}}"><br>
                <b>Comment</b><br>
                <textarea name="commentBody" cols="60" rows="10">{{comment['body']}}</textarea><br>
                <input type="submit" value="Submit">
            </form>
            </ul>
        </div>
    </div>
    <div id="prefooter">
        <div class="particles">
            <h2>Top Articles</h2>
        </div>
        <div class="comments">
            <h2>Last Comments</h2>
        </div>
    </div>
</div>
</body>
</html>


