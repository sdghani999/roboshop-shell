echo -e "\e[32minstall nginx server \e[0m"
yum install nginx -y &>>/tmp/roboshop.log

echo -e "\e[32mremove the content \e[0m"
rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log

echo -e "\e[32mdownlode the frontend content \e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/roboshop.log


echo -e "\e[32mcopy the frontend content \e[0m"
cd /usr/share/nginx/html &>>/tmp/roboshop.log

echo -e "\e[32mextract the frotend content \e[0m"
unzip /tmp/frontend.zip &>>/tmp/roboshop.log

echo -e "\e[32mstart nginx server \e[0m"
systemctl enable nginx &>>/tmp/roboshop.log
systemctl restart nginx &>>/tmp/roboshop.log



