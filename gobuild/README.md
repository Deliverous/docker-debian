## GoBuid

GoBuild is a container used to build go-lang projects.

To use it, just run : 

    docker run deliverous/gobuild GIT_URL > project.tgz

or 

    docker run -v /path/to/local/project:/workspace deliverous/gobuild > project.tgz
