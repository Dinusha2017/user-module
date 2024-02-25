INSERT INTO User_Role(role_name) VALUES ('SUPERADMIN');
INSERT INTO User_Role(role_name) VALUES ('ADMIN');
INSERT INTO User_Role(role_name) VALUES ('USER');

INSERT INTO "USER" (first_name, last_name, email, address, country, user_role) 
VALUES ('Paul', 'Reynolds', 'paul@gmail.com', 'Colombo', 'Sri Lanka', 1);
INSERT INTO "USER" (first_name, email, address, country, user_role) 
VALUES ('Anne', 'anne@gmail.com', 'Colombo', 'Sri Lanka', 2);
INSERT INTO "USER" (first_name, email, address, country, user_role) 
VALUES ('John', 'john@gmail.com', 'Colombo', 'Sri Lanka', 3);

INSERT INTO User_Phone_Number(user_id, phone_number) VALUES(10000, 742490323);
INSERT INTO User_Phone_Number(user_id, phone_number) VALUES(10000, 742434533);
INSERT INTO User_Phone_Number(user_id, phone_number) VALUES(10001, 742443533);
INSERT INTO User_Phone_Number(user_id, phone_number) VALUES(10002, 734667323);