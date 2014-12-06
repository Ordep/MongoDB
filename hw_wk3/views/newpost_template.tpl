<!doctype HTML>
<html>
<head>
<title>Create a new post</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div class="content">
    <div id=header>
        <div class="title">
            <h1>My Blog</h1>
            %if (username != None):
                Welcome {{username}}        <a href="/logout">Logout</a> | <a href="/">Blog Home</a><p>
            %end
        </div>
    </div>
    <div id="main">
        <div class="center">
            <form action="/newpost" method="POST">
            {{errors}}
                <h2>Title</h2>
                <input type="text" name="subject" size="60" value="{{subject}}"><br>
                <h2>Blog Entry<h2>
                <textarea name="body" cols="60" rows="20">{{body}}</textarea><br>
                <h2>Tags</h2>
                Comma separated, please<br>
                <input type="text" name="tags" size="60" value="{{tags}}"><br>
                <p>
                <input type="submit" value="Submit">
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

