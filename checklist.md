Riassuntone DB
==============

Attività culinarie
------------------
* [ ] place_id: Place unique identifier  
* [ ] name: Name of the Place (e.g., Pedavena) 
* [ ] description: Textual description of the place 
* [ ] picture_url: Link to a representative picture of the place 
* [ ] loc_street: Full address of the place 
* [ ] loc_city: City where the place is located 
* [ ] loc_state: State (or province) where the place is located ­ if applied. 
* [ ] loc_country: Country where the place is located 
* [ ] loc_latitude: Location latitude, for filtering and geolocation 
* [ ] loc_longitude: Location longitude, for filtering and geolocation 


Servizi
-------
service_id: Service unique identifier 
name: Name of the Service (e.g., Restaurant) 
description: Textual description of the service 
Utenti: 
l’utente è una persona REGISTRATA AL NOSTRO SISTEMA
user_id: User unique identifier 
email: User email address 
gender: User gender 
age: Age of the user 
first_login: Time when the user performed the first login (registration) 
fb_extid: Id of the user in facebook 
trustful: Degree to which the ratings of the user can be trusted 
loc_city: User where the user is located 
loc_state: State or province where the user is located
loc_country: Country where the user is located 

Amicizia
--------
relazione bidirezionale tra DUE utenti; due utenti sono “amici” se c’è una entry in questa relazione che connette user_a con user_b

Scopo(purpose)
--------------
purpose_id: Service unique identifier 
name: Name of the Purpose (e.g., “Out with friends”) 
description: Textual description of the purpose. 

Ratings
-------
devono essere su scala [0-5]
dobbiamo decidere quale “simbolo” usare
place_id: Place unique identifier 
user_id: User unique identifier 
purpose_id: Purpose unique identifier 
value: actual rating on the a scale [1­5] 
creation_time: date when the user performed the rating 

Clusters
--------
I clusters sono gruppi di utenti che condividono gli stessi gusti data una misura di similarità. I clusters dovrebbero aggregare i rating di tutti i propri membri nella relazione clusters_places. La strategia specifica utilizzata è a discrezione del TEAM. 
cluster_id: Cluster unique identifier 
creation_time: Date and time when the cluster was created 

La relazione clusters_places condivide gli stessi attributi dei ratings
