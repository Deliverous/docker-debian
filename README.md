## GoBuid

GoBuild is a container used to build go-lang projects.

To use it, just run : 

    docker run -t -i -v /path/to/output:/output deliverous/gobuild <projects>

or 

    docker run -t -i -v /path/to/local/project:/workspace -v /path/to/output:/output deliverous/gobuild deliverous/gobuild
