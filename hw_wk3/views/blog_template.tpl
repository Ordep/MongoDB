<!DOCTYPE html>
<head>
<title>MongoDB</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div class="content">
    <div id=header>
        <div class="title">
            <h1>My Blog</h1>
            %if (username != None):
                Welcome {{username}}        <a href="/logout">Logout</a> | <a href="/newpost">New Post</a><p>
            %end
        </div>
    </div>
    <div id="main">
        <div class="center">
            %for post in myposts:
                <h2><a href="/post/{{post['permalink']}}">{{post['title']}}</a></h2>
                <h3>
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
                    <img src="more.gif" alt="website template image">
                    <a href="/post/{{post['permalink']}}">Read more</a>
                    <img src="comment.gif" alt="website template image">
                    Comments:
                    %if ('comments' in post):
                        %numComments = len(post['comments'])
                    %else:
                        %numComments = 0
                    %end
                    <a href="/post/{{post['permalink']}}">({{numComments}})</a>
                    <img src="timeicon.gif" alt="website template image">
                    {{post['post_date']}}
                </p>
                <br>
            %end
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


