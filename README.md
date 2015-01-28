## GoBuid

GoBuild is a container used to build go-lang 1.3.3 projects.

To use it, just run : 

    docker run -v /path/to/go:/go -v /path/to/ssh:/ssh deliverous/gobuild "repourl;path;tag"

or 
    
    docker run deliverous/gobuild "http://github.com/spf13/hugo;github.com/spf13/hugo;" | tar -x


if /ssh contain a valide ssh configuration, it will be use to do the "go get" command.
The "go get" from git+ssh repository must work from your local machine if you whant to inject it in container. 
For example, you can follow : http://golang-examples.tumblr.com/post/48110308878/go-get-from-git-ssh-repository 

GoBuild will puts all binaries in /path/to/go/bin and push a tar archive with all binaries on stdout.


