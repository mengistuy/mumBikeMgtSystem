DELETE FROM user WHERE email = 'admin@mum.edu';
INSERT INTO user (user_id,address,email,fname,lname,password,phone_no,user_type,active) VALUES (1, 'Maharishi University Of Management', 'admin@mum.edu', 'admin', 'admin', '$2a$10$J6FWAO7V8PjnTtnr3ChKtufq9iy9S3ZEoT0cechp4TeAFDJ9MAdki', '800-369-6480', 'Admin', true);
