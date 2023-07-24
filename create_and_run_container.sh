clear

sudo docker stop test-container

sudo docker rm test-container
sudo docker image rm ytn:yenten1

sudo docker build -t ytn:yenten1 .

#sudo docker run -v ~/dock/yenten/data:/home/yenten/.yenten -it --name test-container ytn:yenten1
sudo docker run -v ~/dock/yenten/data:/home/yenten/.yenten -d -p 9981:9981 -p 9982:9982 --name test-container ytn:yenten1
