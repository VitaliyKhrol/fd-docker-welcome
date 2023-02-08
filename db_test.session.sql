CREATE TABLE cats(
    id serial PRIMARY KEY,
    name varchar (300),
    color varchar(300)
)


INSERT INTO cats(name,color)
VALUES 
('MURKA', 'red'),
('COCOS', 'white')

Контейнер - ізольований процес в операційній системі, що запускається Docker-ом ізольовано від всього.

Образ містить файли, залежності і все-все-все, що потрібно, щоб розгорнути контейнер.
Запущений екземпляр образу = контейнер.


docker run -it 
-p 6000:5432
-v ~/db_backups:/var/lib/postgresql/data
-e POSTGRES_PASSWORD=test 
-e POSTGRES_USER=test 
-e POSTGRES_DB=docker_db 
--name sql_db postgres:alpine


docker run -it -v "$(pwd)":/app:ro -p 5000:5000 --name my_server server:0.0.1