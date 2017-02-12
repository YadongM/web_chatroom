# 基础镜像
FROM python:3.6.8

# 安装依赖
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# 装入代码
#COPY ./web /web

# 打开端口
EXPOSE 8080

#CMD /web/run 
