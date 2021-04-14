FROM centos
VOLUME ["/dataVolumnContainer1","/dataVolumnContainer2"]
CMD echo "finished,--------success"
CMD /bin/bash

# docker run -it -v /host1:/dataVolumnContainer1 -v host2:/dataVolumnContainer2 centos /bin/bash
# docker build -f ./Dockerfile -t centos .
