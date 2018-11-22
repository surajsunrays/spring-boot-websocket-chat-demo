## Spring Boot WebSocket Chat Appplication

## Requirements

1. Java - 1.8.x

2. Maven - 3.x.x

## Steps to Setup

**1. Clone the application**

```bash
git clone https://github.com/surajsunrays/spring-boot-websocket-chat-demo.git
```

**2. Build and run the app using maven**

```bash
cd spring-boot-websocket-chat-demo
mvn package
java -jar target/websocket-demo-0.0.1-SNAPSHOT.jar
```

Alternatively, you can run the app directly without packaging it like so -

```bash
mvn spring-boot:run
```

**3. Create Docker Container for the project
```bash
sudo docker image build -t spring-boot-websocket-chat-demo .
```
**4. Create and Run the container using above create IMAGE
```bash
sudo docker run -d -p 5000:8080 spring-boot-websocket-chat-demo
```
**5. Check the output of application open browser and open URL
```URL
http://localhost:5000
```
