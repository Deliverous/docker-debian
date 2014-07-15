## GoBuid

GoBuild is a container used to build go-lang projects.

To use it, just run : 

    docker run deliverous/gobuild <projects> | tar -xv -C /output/directory/

or 

    docker run -v /path/to/local/project:/workspace deliverous/gobuild deliverous/gobuild <projects> > output.tar

or 

    docker run -v /path/to/.ssh:/ssh deliverous/gobuild deliverous/gobuild <projects> | tar -xv -C /output/directory/

if /ssh contain a valide ssh configuration, it will be use to do the "go get" command.
The "go get" from git+ssh repository must work from your local machine if you whant to inject it in container. 
For example, you can follow : http://golang-examples.tumblr.com/post/48110308878/go-get-from-git-ssh-repository 

GoBuild push all binaries produce in tar on stdout.
