# nvidia-docker run -it --rm --network host -v /nfs/home/gzhang/:/workdir/gzhang -w /workdir -u $(id -u ${USER}):$(id -g ${USER}) 10.202.67.207:5000/gz bash
nvidia-docker run -it --rm --network=host -v /nfs/home/gzhang/:/nfs/home/gzhang/mounted -u $(id -u ${USER}):$(id -g ${USER}) 10.202.67.207:5000/gzhang:latest bash
