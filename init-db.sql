-- Create databases
CREATE DATABASE IF NOT EXISTS auth_db    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS account_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS product_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS order_db   CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Grant privileges to pma user (created by MYSQL_USER env var)
GRANT ALL PRIVILEGES ON auth_db.*    TO 'pma'@'%';
GRANT ALL PRIVILEGES ON account_db.* TO 'pma'@'%';
GRANT ALL PRIVILEGES ON product_db.* TO 'pma'@'%';
GRANT ALL PRIVILEGES ON order_db.*   TO 'pma'@'%';

FLUSH PRIVILEGES;
