srun -p titanxp -N 1 -n 4 -t 24:00:00 --gres=gpu:2 --pty /bin/bash -l
#docker build -t hanabi . 
#docker run --gpus all -p 2020:5000 -d hanabi 
