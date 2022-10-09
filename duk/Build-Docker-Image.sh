# docker build -t 10.202.67.207:5000/gz:latest --network=host --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) --build-arg USER=${USER} .
# docker build -t 10.202.67.207:5000/gzhang:latest --network=host . 

# $docker_tag = 10.202.67.207:5000/$USER:latest

docker build . -f Dockerfile \
  --tag 10.202.67.207:5000/$USER:02 \
  --build-arg USER_ID=$(id -u) \
  --build-arg GROUP_ID=$(id -g) \
  --build-arg USER=$USER \
  --network=host

docker push 10.202.67.207:5000/gzhang:02
