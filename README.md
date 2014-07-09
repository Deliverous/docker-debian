## GoBuid

GoBuild is a container used to build go-lang projects.

To use it, just run : 

    docker run -t -i -v /path/to/output:/output deliverous/gobuild <projects>

or 

    docker run -t -i -v /path/to/local/project:/workspace deliverous/gobuild deliverous/gobuild

if /path/to/local/project/.ssh exist, it will be use to do the "go get" command
the "go get" from git+ssh repository must work from your local machine if you whant to inject it in container. 
For example, you can follow : http://golang-examples.tumblr.com/post/48110308878/go-get-from-git-ssh-repository 
