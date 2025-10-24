--a
select * 
from article as a 
ORDER BY a.designation ASC;
--b
select * 
from article as a 
ORDER BY a.prix ASC;
--c
select * 
from article as a 
WHERE a.designation like 'Boulon%' ORDER BY a.prix ASC ;
--d
select * 
from article as a 
WHERE a.designation like '%sachet%';
--e
select * 
from article as a 
WHERE upper(a.designation) like upper('%sachet%');
--f
SELECT * 
FROM article 
JOIN fournisseur ON article.id_fou = fournisseur.id 
ORDER BY fournisseur.nom ASC, article.prix DESC;
--g
SELECT * 
FROM article 
JOIN fournisseur ON article.id_fou = fournisseur.id 
WHERE fournisseur.nom = 'Dubois & Fils';
--h
SELECT * 
FROM article JOIN fournisseur ON article.id_fou = fournisseur.id 
WHERE fournisseur.nom = 'Dubois & Fils';
--i
SELECT AVG(article.prix), fournisseur.nom 
FROM article JOIN fournisseur ON article.id_fou = fournisseur.id 
GROUP BY fournisseur.nom;
--j
SELECT * 
FROM bon 
WHERE date_cmde between '2019-03-01 00:00:00' and '2019-04-05 12:00:00';
--k
SELECT b.id,b.numero,b.date_cmde,b.delai 
FROM compo as c 
inner join article as a on c.id_art = a.id 
inner join bon as b on c.id_bon=b.id 
WHERE a.designation like 'Boulon%' 
order by b.id;
--l
SELECT b.id,b.numero,b.date_cmde,b.delai,f.nom 
FROM compo as c 
inner join article as a on c.id_art = a.id 
inner join bon as b on c.id_bon=b.id
inner join fournisseur as f on a.id_fou=f.id
WHERE a.designation like 'Boulon%' 
order by b.id;
--m
SELECT b.id,b.numero,b.date_cmde,b.delai,f.nom, sum(c.qte*a.prix)  as 'prix du bon de commande'
FROM compo as c 
inner join article as a on c.id_art = a.id 
inner join bon as b on c.id_bon=b.id
inner join fournisseur as f on a.id_fou=f.id
group by b.id;
--n
SELECT b.id,b.numero,b.date_cmde,b.delai,f.nom, sum(c.qte)  as 'prix du bon de commande'
FROM compo as c 
inner join article as a on c.id_art = a.id 
inner join bon as b on c.id_bon=b.id
inner join fournisseur as f on a.id_fou=f.id
group by b.id;
--o
SELECT b.id,b.numero,b.date_cmde,b.delai,f.nom, sum(c.qte)  as 'qte'
FROM compo as c 
inner join article as a on c.id_art = a.id 
inner join bon as b on c.id_bon=b.id
inner join fournisseur as f on a.id_fou=f.id
group by b.id
having qte>25;
--p
SELECT sum(c.qte*a.prix)  as 'prix du bon de commande'
FROM compo as c 
inner join article as a on c.id_art = a.id 
right join bon as b on c.id_bon=b.id
where b.date_cmde between '2019-04-01' and  '2019-04-30';
--q

