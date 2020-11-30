# JWT API using Laravel

### Installation

##### Clone the repo
#
```sh
$ git clone https://github.com/gkfoury/VUZ_Laravel_JWT_GK.git
```
##### Install
#
```sh
$ cd VUZ_Laravel_JWT_GK/
$ composer install
$ composer dumpautoload -o
```
##### Create the .env file
#
```sh
$ cp .env.example .env
```
##### Gnerate Key and JWT_SECRET
#
```sh
$ php artisan key:generate
$ php artisan jwt:secret
```
##### Set MySQL's connection properties in .env:  
#
```sh
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=password
```
##### Cleanup and serve !!!
#
```sh
$ php artisan config:clear
$ php artisan config:cache
$ php artisan serve
```
##### Extract and Import the Sample MySQL file
#
```
$ tar -xvf laravel.sql.xz
$ mysql -u root -p < laravel.sql
```
##### Sample Request to call the user subscribe function
Here we are calling the "user subscribe" function that generates a JWT payload with all the required fields and calls the subscribe endpoit which creates the subscription object in the DB. 
The subscription object is returned as JSON, clients implementing this API can use the returned subscription id to call the get subscription callback.
#

> http://localhost:8000/api/auth/userSubscribe?userId=1&MSISDN=96171612930&Operator_id=2

##### Sample Request to call the user unsubscribe function
Here we are calling the "user unsubscribe" function that generates a JWT payload with all the required fields and calls the unsubscribe endpoit which updates the subscription object in the DB. 
The subscription object is returned as JSON, clients implementing this API can use the returned subscription id to call the get subscription callback and check that the unsubscription is successful.
#

> http://localhost:8000/api/auth/userUnubscribe?subscription_id=1


##### Sample Request to call the user unsubscribe function
Here we are calling the callback function that can be used by both actions: subscribe and unsubscribe.
It shows the full details of the subscription, and most importingly the status.
#

> http://localhost:8000/api/auth/subscription/1
