SELECT r.place_id, AVG(r.value),p.picture_url,p.description
FROM ratings r inner join places p ON r.place_id=p.place_id
GROUP BY r.place_id;


SELECT r.place_id, r.comment, u.name
FROM ratings r INNER JOIN users u on r.user_id=u.user_id;
