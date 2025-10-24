--a
select * from article as a ORDER BY a.designation ASC;
--b
select * from article as a ORDER BY a.prix ASC;
--c
select * from article as a WHERE a.designation like '%Boulon%' ORDER BY a.prix ASC ;
--d
select * from article as a WHERE a.designation like '%sachet%';
--e
select * from article as a WHERE upper(a.designation) like upper('%sachet%');
--f
SELECT * FROM article JOIN fournisseur ON article.id_fou = fournisseur.id ORDER BY fournisseur.nom ASC, article.prix DESC;
--g
SELECT * FROM article JOIN fournisseur ON article.id_fou = fournisseur.id WHERE fournisseur.nom = 'Dubois & Fils';
--h
SELECT * FROM article JOIN fournisseur ON article.id_fou = fournisseur.id WHERE fournisseur.nom = 'Dubois & Fils';
--i
SELECT AVG(article.prix), fournisseur.nom FROM article JOIN fournisseur ON article.id_fou = fournisseur.id GROUP BY fournisseur.nom;

